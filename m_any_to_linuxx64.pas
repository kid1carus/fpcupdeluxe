unit m_any_to_linuxx64;

{ Cross compiles from any (or any other OS with relevant binutils/libs) to Linux 64 bit
Copyright (C) 2014 Reinier Olislagers

This library is free software; you can redistribute it and/or modify it
under the terms of the GNU Library General Public License as published by
the Free Software Foundation; either version 2 of the License, or (at your
option) any later version with the following modification:

As a special exception, the copyright holders of this library give you
permission to link this library with independent modules to produce an
executable, regardless of the license terms of these independent modules,and
to copy and distribute the resulting executable under terms of your choice,
provided that you also meet, for each linked independent module, the terms
and conditions of the license of that module. An independent module is a
module which is not derived from or based on this library. If you modify
this library, you may extend this exception to your version of the library,
but you are not obligated to do so. If you do not wish to do so, delete this
exception statement from your version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the GNU Library General Public License
for more details.

You should have received a copy of the GNU Library General Public License
along with this library; if not, write to the Free Software Foundation,
Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
}

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, m_crossinstaller, fileutil;

implementation

type

{ Tany_linux64 }
Tany_linux64 = class(TCrossInstaller)
private
  FAlreadyWarned: boolean; //did we warn user about errors and fixes already?
public
  function GetLibs(Basepath:string):boolean;override;
  {$ifndef FPCONLY}
  function GetLibsLCL(LCL_Platform:string; Basepath:string):boolean;override;
  {$endif}
  function GetBinUtils(Basepath:string):boolean;override;
  constructor Create;
  destructor Destroy; override;
end;

{ Tany_linux64 }

function Tany_linux64.GetLibs(Basepath:string): boolean;
const
  NormalDirName='x86_64-linux';
  MUSLDirName='x86_64-musllinux';
var
  aDirName,aLibcName:string;
begin
  result:=FLibsFound;
  if result then exit;

  if FMUSL then
  begin
    aDirName:=MUSLDirName;
    aLibcName:=MUSLLIBCNAME;
  end
  else
  begin
    aDirName:=NormalDirName;
    aLibcName:=LIBCNAME;
  end;

  // begin simple: check presence of library file in basedir
  result:=SearchLibrary(Basepath,aLibcName);

  // first search local paths based on libbraries provided for or adviced by fpc itself
  if not result then
    result:=SimpleSearchLibrary(BasePath,aDirName,aLibcName);

  if not result then
  begin
    {$IFDEF UNIX}
    {$IFDEF MULTILIB}
    FLibsPath:='/usr/lib/x86_64-linux-gnu'; //debian Jessie+ convention
    result:=DirectoryExists(FLibsPath);
    if not result then
    ShowInfo('Searched but not found libspath '+FLibsPath);
    {$ENDIF}
    {$ENDIF}
  end;

  SearchLibraryInfo(result);

  if result then
  begin
    FLibsFound:=True;
    AddFPCCFGSnippet('-Fl'+IncludeTrailingPathDelimiter(FLibsPath));
    AddFPCCFGSnippet('-Xr/usr/lib');
    if FMUSL then AddFPCCFGSnippet('-FL/lib/ld-musl-x86_64.so.1');
  end;
end;

{$ifndef FPCONLY}
function Tany_linux64.GetLibsLCL(LCL_Platform: string; Basepath: string): boolean;
begin
  // todo: get gtk at least
  result:=inherited;
end;
{$endif}

function Tany_linux64.GetBinUtils(Basepath:string): boolean;
const
  NormalDirName='x86_64-linux';
  MUSLDirName='x86_64-musllinux';
var
  AsFile: string;
  BinPrefixTry: string;
  aDirName: string;
begin
  result:=inherited;
  if result then exit;

  if FMUSL then
    aDirName:=MUSLDirName
  else
    aDirName:=NormalDirName;

  AsFile:=FBinUtilsPrefix+'as'+GetExeExt;

  result:=SearchBinUtil(BasePath,AsFile);

  if not result then
    result:=SimpleSearchBinUtil(BasePath,aDirName,AsFile);

  // Also allow for (cross)binutils without prefix
  if not result then
  begin
    BinPrefixTry:='';
    AsFile:=BinPrefixTry+'as'+GetExeExt;
    result:=SearchBinUtil(BasePath,AsFile);
    if not result then result:=SimpleSearchBinUtil(BasePath,aDirName,AsFile);
    if result then FBinUtilsPrefix:=BinPrefixTry;
  end;

  SearchBinUtilsInfo(result);

  if result then
  begin
    FBinsFound:=true;
    AddFPCCFGSnippet('-FD'+IncludeTrailingPathDelimiter(FBinUtilsPath));
    AddFPCCFGSnippet('-XP'+FBinUtilsPrefix);
  end;
end;

constructor Tany_linux64.Create;
begin
  inherited Create;
  FBinUtilsPrefix:='x86_64-linux-';
  FBinUtilsPath:='';
  FFPCCFGSnippet:='';
  FLibsPath:='';
  FTargetCPU:='x86_64';
  FTargetOS:='linux';
  FAlreadyWarned:=false;
  ShowInfo;
end;

destructor Tany_linux64.Destroy;
begin
  inherited Destroy;
end;

var
  any_linux64:Tany_linux64;

initialization
  any_linux64:=Tany_linux64.Create;
  RegisterExtension(any_linux64.TargetCPU+'-'+any_linux64.TargetOS,any_linux64);

finalization
  any_linux64.Destroy;

end.

