{ Command line parsing unit

Copyright (C) 2012 Ludo Brands

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
unit commandline;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TCommandLineOptions }

  TCommandLineOptions=class(TObject)
  private
    FAllOptions: string;
    FCaseSensitive: boolean;
    FIniFile: string;
    FIniFileSection: string;
    Params:TStringList;
    function GetOption(shortname,name:string;var param:string;bAppendToAllOptions,bHasParam:boolean):boolean;
    procedure LoadFile(fname:string);
    function LoadIniFile:boolean;
    //read all params in string list, load @filename at start to let command line options override file options
    procedure LoadParams;
    procedure SetIniFile(AValue: string);
  public
    //lists all options retrieved with AppendToAllOptions=true in command line arg format.
    property AllOptions:string read FAllOptions;
    property CaseSensitive:boolean read FCaseSensitive write FCaseSensitive;
    // specify inifile to load params from inifile
    // these parameters are overridden by command-line parameters
    property IniFile:string read FIniFile write SetIniFile ;
    // Section name (e.g. [General]) where parameters are if using ini files
    property IniFileSection: string read FIniFileSection write FIniFileSection;
    // arguments left after getting all command line parameters
    property RestArguments:TStringList read Params;
    function GetOption(shortname,name,defaultVal:string;AppendToAllOptions:boolean=true):string;
    function GetOption(shortname,name:string;defaultVal:integer;AppendToAllOptions:boolean=true):integer;
    function GetOption(shortname,name:string;defaultVal:boolean;AppendToAllOptions:boolean=true):boolean;
    function GetOption(shortname,name:string;defaultVal:double;AppendToAllOptions:boolean=true):double;
    function GetOptionNoParam(shortname,name:string;AppendToAllOptions:boolean=true):boolean;
    // Results false if unknown parameters are left
    function ValidateOptions:string;
    // If IniFileSection specified, the @filename param will attempt to load filename as inifile first,
    // else @filename will always be interpreted as a series of command line arguments
    constructor create(FileSection:string='');
    destructor destroy;override;
  end;

implementation

uses inifiles;

{ TCommandLineOptions }

procedure TCommandLineOptions.LoadFile(fname: string);
var
  f:text;
  i,cnt:integer;
  cQuote:char;
  s:string;
begin
  if FileExists(fname) then
    begin
    if (FIniFileSection<>'') then // try to read it as a ini file
      begin
      FIniFile:=fname;
      if LoadIniFile then
        exit;
      end;
    cnt:=0;
    AssignFile(f,fname);
    Reset(f);
    while not eof(f) do
      begin
      readln(f,s);
      //split into parameters
      while length(s)>0 do
        begin
        i:=1;
        while i<=length(s) do
          begin
          if s[i] in ['''','"'] then
            begin
            cQuote:=s[i];
            delete(s,i,1);
            i:=i-1;
            repeat
              i:=i+1;
            until (s[i]=cQuote) or (i=length(s));
            if s[i]=cQuote then
              begin
              delete(s,i,1);
              i:=i-1;
              end;
            end
          else
            if (s[i]<=' ') then
              begin
              if i>1 then
                begin
                Params.Insert(cnt,copy(s,1,i-1));
                cnt:=cnt+1;
                end;
              delete(s,1,i);
              i:=0;
              end;
          i:=i+1;
          end;
        if (i>length(s)) then
          begin
          Params.Insert(cnt,copy(s,1,i-1));
          cnt:=cnt+1;
          delete(s,1,i);
          end;
        end;
      if length(s)>0 then
        Params.Add(s);
      end;
    CloseFile(f);
    end;
end;

function TCommandLineOptions.LoadIniFile: boolean;
var
  ini:TIniFile;
  i:integer;
  cQuote:char;
  sSection,s:string;
  SecKeys,SecVals:TStringList;
begin
  result:=false;
  if (FIniFile<>'') and FileExists(FIniFile) then
    begin
    ini:=TIniFile.Create(FIniFile);
    ini.StripQuotes:=true; //let ini handle e.g. lazopt="-g -gl -O1" for us
    SecVals:=TStringList.Create;
    try
      if (FIniFileSection<>'') then
        sSection:=FIniFileSection
      else
        sSection:='General';
      ini.CaseSensitive:=FCaseSensitive;
      ini.ReadSectionValues(sSection,SecVals);
      if SecVals.Count>0 then
        begin
        result:=true;
        for i:=0 to SecVals.Count-1 do
          Params.Insert(i,'--'+SecVals[i]);
        end;
    finally
      SecVals.Free;
      ini.free;
    end;
    end;
end;

procedure TCommandLineOptions.LoadParams;
var
  i:integer;
  sParam:string;
begin
  i:=1;
  while i<=Paramcount do
    begin
    sParam:=ParamStr(i);
    // First load in @file or @ file if specified
    // This lets us override with command line args later
    if sParam[i]='@' then
      begin
      if (length(sParam)=1) and (i<Paramcount) then
        begin
        i:=i+1;
        LoadFile(ParamStr(i));
        end
      else
        LoadFile(copy(ParamStr(i),2,length(ParamStr(i))));
      end;
    i:=i+1;
    end;

  // Load in normal parameters
  i:=1;
  while i<=Paramcount do
    begin
    sParam:=ParamStr(i);
    // First load in @file if specified
    // This lets us override with command line args later
    if sParam[i]<>'@' then
      Params.Add(ParamStr(i));
    i:=i+1;
    end;
end;

procedure TCommandLineOptions.SetIniFile(AValue: string);
begin
  if FIniFile=AValue then Exit;
  FIniFile:=AValue;
  //load params from ini file, params are overriden by everything else
  LoadIniFile;
end;

function TCommandLineOptions.GetOption(shortname, name, defaultVal: string;
  AppendToAllOptions: boolean): string;
var
  s:string;
begin
  if GetOption(shortname, name,s,AppendToAllOptions,true) then
    result:=s
  else
    result:=defaultVal;
end;

function TCommandLineOptions.GetOption(shortname, name: string;
  defaultVal: integer; AppendToAllOptions: boolean): integer;
var
  s:string;
begin
  if GetOption(shortname, name,s,AppendToAllOptions,true) then
    result:=StrToIntDef(s,defaultVal)
  else
    result:=defaultVal;
end;

function TCommandLineOptions.GetOptionNoParam(shortname, name: string;
  AppendToAllOptions: boolean): boolean;
var
  s:string;
begin
  result:=GetOption(shortname, name,s,AppendToAllOptions,false);
end;

function TCommandLineOptions.GetOption(shortname, name: string;
  defaultVal: boolean; AppendToAllOptions: boolean): boolean;
var
  s:string;
begin
  if GetOption(shortname, name,s,AppendToAllOptions,true) then
    result:=StrToBoolDef(s,defaultVal)
  else
    result:=defaultVal;
end;

function TCommandLineOptions.GetOption(shortname, name: string;
  defaultVal: double; AppendToAllOptions: boolean): double;
var
  s:string;
begin
  if GetOption(shortname, name,s,AppendToAllOptions,true) then
    result:=StrToFloatDef(s,defaultVal)
  else
    result:=defaultVal;
end;

function TCommandLineOptions.ValidateOptions: string;
var i:integer;
begin
  result:='';
  for i:=0 to Params.Count-1 do
    if Params[i][1]='-' then
      begin
      result:=Params[i];
      break;
      end;
end;

function TCommandLineOptions.GetOption(shortname, name: string;
  var param: string; bAppendToAllOptions, bHasParam: boolean): boolean;
var
  i:integer;
  sParam,sCSParam:string;
  sCSshortname,sCSname:string;
begin
  result:=false;
  if (shortname='') and (name='') then
    exit;
  i:=0;
  if not CaseSensitive then
    begin
    sCSshortname:=UpperCase(shortname);
    sCSname:=UpperCase(name);
    end
  else
    begin
    sCSshortname:=shortname;
    sCSname:=name;
    end;
  while (i<Params.Count) do
    begin
    sParam:=Params[i];
    if not CaseSensitive then
      sCSParam:=UpperCase(sParam)
    else
      sCSParam:=sParam;
    if sParam[1]='-'then
      begin
      if (Length(sParam)>1) and (sParam[2]='-') then
        begin     //long option
        delete(sParam,1,2);
        delete(sCSParam,1,2);
        if (name<>'') and (sCSname=copy(sCSParam,1,length(name))) then
          begin
          if bHasParam and (pos('=',sParam)<=0) then
            raise exception.Create('Option -'+shortname+', --'+name+' needs an argument: '+ Params[i]);
          delete(sParam,1,length(name));
          Params.delete(i);
          i:=i-1;
          param:=sParam;
          Result:=true;
          end;
        end
      else
        begin     //short option
        delete(sParam,1,1);
        delete(sCSParam,1,1);
        if (shortname<>'') and (sCSshortname=copy(sCSParam,1,length(shortname))) then
          begin
          if bHasParam and (pos('=',sParam)<=0) then
            raise exception.Create('Option -'+shortname+', --'+name+' needs an argument: '+ Params[i]);
          delete(sParam,1,length(shortname));
          Params.delete(i);
          i:=i-1;
          param:=sParam;
          Result:=true;
          end;
        end;
      end;
    i:=i+1;
    end;
  if Result then
    begin
    if not bHasParam then
      begin
      if (param<>'') then //error, no argument for this option
        raise exception.Create('Option -'+shortname+', --'+name+' does not allow an argument');
      if bAppendToAllOptions then
        if name<>'' then
          FAllOptions:=trim(FAllOptions+' --'+name)
        else
          FAllOptions:=trim(FAllOptions+' -'+shortname);
      end
    else
      begin //argument needed
      delete(param,1,pos('=',param));
      if bAppendToAllOptions then
        if name<>'' then
          FAllOptions:=trim(FAllOptions+' --'+name+'="'+param+'"')
        else
          FAllOptions:=trim(FAllOptions+' -'+shortname+'="'+param+'"');
      end;
    end;
end;

constructor TCommandLineOptions.create(FileSection: string);
begin
  inherited create;
  Params:=TStringList.Create;
  FIniFileSection:=FileSection;
  LoadParams;
end;

destructor TCommandLineOptions.destroy;
begin
  Params.Free;
  inherited destroy;
end;

end.

