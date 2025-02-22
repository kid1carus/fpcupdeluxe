unit installerUniversal;

{ Universal (external) installer unit driven by .ini file directives
Copyright (C) 2012-2013 Ludo Brands, Reinier Olislagers

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
{$modeswitch advancedrecords}

interface

uses
  Classes, SysUtils, installerCore, m_crossinstaller, processutils
  {$ifndef FPCONLY}
  ,updatelazconfig
  {$endif}
  {$IFDEF MSWINDOWS}, wininstaller{$ENDIF};

type
  {$ifndef FPCONLY}
  TAPkgVersion = record
  private
    FName:string;
    FFileVersion:longint;
    FMajor: integer;
    FMinor: integer;
    FRelease: integer;
  FBuild: integer;
  public
    function AsString: string;
    procedure GetVersion(alpkdoc:TConfig;key:string);
    property Name: string read FName write FName;
    property FileVersion: longint read FFileVersion write FFileVersion;
    //property Major: integer read FMajor;
    //property Minor: integer read FMinor;
    //property Release: integer read FRelease;
    //property Build: integer read FBuild;
  end;
{$endif}

  { TUniversalInstaller }

  TUniversalInstaller = class(TInstaller)
  private
    FBinPath:string; //Path where compiler is
    // FPC base directories
    FFPCSourceDir:string;
    FFPCInstallDir:string;
    FPath:string; //Path to be used within this session (e.g. including compiler path)
    InitDone:boolean;
    {$ifndef FPCONLY}
    // Compiler options chosen by user to build Lazarus. There is a CompilerOptions property,
    // but let's leave that for use with FPC.
    FLazarusCompilerOptions:string;
    // Lazarus base directories
    FLazarusSourceDir:string;
    FLazarusInstallDir:string;
    // Keep track of whether Lazarus needs to be rebuilt after package installation
    // or running lazbuild with an .lpk
    FLazarusNeedsRebuild:boolean;
    // Directory where configuration for Lazarus is stored:
    FLazarusPrimaryConfigPath:string;
    // LCL widget set to be built
    FLCL_Platform: string;
    function RebuildLazarus:boolean;
    {$endif}
  protected
    // Scans for and adds all packages specified in a (module's) stringlist with commands:
    function AddPackages(sl:TStringList): boolean;
    {$IFDEF MSWINDOWS}
    // Filters (a module's) sl stringlist and creates all <Directive> installers.
    // Directive can now only be Windows/Windows32/Winx86 (synonyms)
    // For now Windows-only; could be extended to generic cross platform installer class once this works
    function CreateInstallers(Directive:string;sl:TStringList;ModuleName:string):boolean;
    {$ENDIF MSWINDOWS}
    // Get a value for a key=value pair. Case-insensitive for keys. Expands macros in values.
    function GetValueFromKey(Key:string;sl:TStringList;recursion:integer=0):string;
    // internal initialisation, called from BuildModule,CleanModule,GetModule
    // and UnInstallModule but executed only once
    function InitModule:boolean;
    {$ifndef FPCONLY}
    // Installs a single package:
    function InstallPackage(PackagePath, WorkingDir: string; RegisterOnly:boolean; Silent:boolean=false): boolean;
    // Scans for and removes all packages specfied in a (module's) stringlist with commands:
    function RemovePackages(sl:TStringList): boolean;
    // Uninstall a single package:
    function UnInstallPackage(PackagePath: string): boolean;
    {$endif}
    // Filters (a module's) sl stringlist and runs all <Directive> commands:
    function RunCommands(Directive:string;sl:TStringList):boolean;
  public
    // FPC base directories
    property FPCSourceDir:string read FFPCSourceDir write FFPCSourceDir;
    property FPCInstallDir:string read FFPCInstallDir write FFPCInstallDir;
    {$ifndef FPCONLY}
    // Compiler options user chose to compile Lazarus with (coming from fpcup).
    property LazarusCompilerOptions: string write FLazarusCompilerOptions;
    // Lazarus primary config path
    property LazarusPrimaryConfigPath:string read FLazarusPrimaryConfigPath write FLazarusPrimaryConfigPath;
    // Lazarus base directories
    property LazarusSourceDir:string read FLazarusSourceDir write FLazarusSourceDir;
    property LazarusInstallDir:string read FLazarusInstallDir write FLazarusInstallDir;
    // LCL widget set to be built
    property LCL_Platform: string read FLCL_Platform write FLCL_Platform;
    {$endif}
    // Build module
    function BuildModule(ModuleName:string): boolean; override;
    // Clean up environment
    function CleanModule(ModuleName:string): boolean; override;
    // Configure module
    function ConfigModule(ModuleName:string): boolean; override;
    // Install/update sources (e.g. via svn)
    function GetModule(ModuleName:string): boolean; override;
    // Gets the list of required modules for ModuleName
    function GetModuleRequirements(ModuleName:string; var RequirementList:TStringList): boolean;
    // Uninstall module
    function UnInstallModule(ModuleName:string): boolean; override;
    constructor Create;
    destructor Destroy; override;
  end;

  // Gets the list of modules enabled in ConfigFile. Appends to existing TStringList
  function GetModuleEnabledList(var ModuleList:TStringList):boolean;
  // Gets the sequence representation for all modules in the ini file
  // Used to pass on to higher level code for selection, display etc.
  //todo: get Description field into module list
  function GetModuleList:string;
  // gets alias for keywords in Dictionary.
  //The keyword 'list' is reserved and returns the list of keywords as commatext
  function GetAlias(aDictionary,aKeyword: string): string;
  function GetKeyword(aDictionary,aAlias: string): string;
  // check if enabled modules are allowed !
  function CheckIncludeModule(ModuleName: string):boolean;
  function SetConfigFile(aConfigFile: string):boolean;
  function GetCPUOSCombo(aCPU,aOS:string):TCPUOS;
  function GetARMArch(aARMArch:string):TARMARCH;
  function GetARMArchFPCDefine(aARMArch:TARMARCH):string;

var
  sequences:string;
  UniModuleList:TStringList=nil;

Const
  CONFIGFILENAME='fpcup.ini';
  SETTTINGSFILENAME='settings.ini';
  DELUXEFILENAME='fpcupdeluxe.ini';

  INIKEYWORD_NAME='Name';
  INIKEYWORD_CATEGORY='Category';
  INIKEYWORD_DESCRIPTION='Description';

implementation

uses
  StrUtils, typinfo,inifiles, FileUtil, fpcuputil, process;

Const
  MAXSYSMODULES=200;
  MAXUSERMODULES=20;
  // Allow enough instructions per module:
  MAXINSTRUCTIONS=255;
  MAXRECURSIONS=10;

var
  CurrentConfigFile:string;
  IniGeneralSection:TStringList=nil;
  UniModuleEnabledList:TStringlist=nil;

{$ifndef FPCONLY}
function TAPkgVersion.AsString: string;
var
  AddValues:boolean;
begin
  result:='';
  AddValues:=(FBuild>0);
  if AddValues then Result:='.'+IntToStr(FBuild)+Result else AddValues:=(FRelease>0);
  if AddValues then Result:='.'+IntToStr(FRelease)+Result else AddValues:=(FMinor>0);
  if AddValues then Result:='.'+IntToStr(FMinor)+Result;
  Result:=IntToStr(FMajor)+Result;
end;

procedure TAPkgVersion.GetVersion(alpkdoc:TConfig;key:string);
begin
  FMajor:=alpkdoc.GetValue(key+'Major',0);
  FMinor:=alpkdoc.GetValue(key+'Minor',0);
  FRelease:=alpkdoc.GetValue(key+'Release',0);
  FBuild:=alpkdoc.GetValue(key+'Build',0);
end;
{$endif}

{ TUniversalInstaller }

{$ifndef FPCONLY}
function TUniversalInstaller.RebuildLazarus:boolean;
var
  s:string;
  LazarusConfig: TUpdateLazConfig;
  i,j:integer;
begin
  result:=false;
  FLazarusNeedsRebuild:=false;

  Processor.Executable := Make;
  Processor.CurrentDirectory := ExcludeTrailingPathDelimiter(LazarusInstallDir);
  Processor.Parameters.Clear;
  //if ((FCPUCount>1) AND (NOT FNoJobs)) then Processor.Parameters.Add('--jobs='+IntToStr(FCPUCount));
  Processor.Parameters.Add('FPC=' + FCompiler);
  Processor.Parameters.Add('PP=' + ExtractFilePath(FCompiler)+GetCompilerName(GetTargetCPU));
  Processor.Parameters.Add('USESVN2REVISIONINC=0');
  Processor.Parameters.Add('--directory=.');
  //Make sure our FPC units can be found by Lazarus
  Processor.Parameters.Add('FPCDIR=' + ExcludeTrailingPathDelimiter(FPCSourceDir));
  //Make sure Lazarus does not pick up these tools from other installs
  Processor.Parameters.Add('FPCMAKE=' + IncludeTrailingPathDelimiter(FPCInstallDir)+'bin'+DirectorySeparator+GetFPCTarget(true)+DirectorySeparator+'fpcmake'+GetExeExt);
  Processor.Parameters.Add('PPUMOVE=' + IncludeTrailingPathDelimiter(FPCInstallDir)+'bin'+DirectorySeparator+GetFPCTarget(true)+DirectorySeparator+'ppumove'+GetExeExt);
  Processor.Parameters.Add('CFGFILE=' + IncludeTrailingPathDelimiter(LazarusPrimaryConfigPath)+DefaultIDEMakeOptionFilename);

  {$ifdef Windows}
  Processor.Parameters.Add('UPXPROG=echo');      //Don't use UPX
  Processor.Parameters.Add('COPYTREE=echo');     //fix for examples in Win svn, see build FAQ
  {$endif}

  if FLCL_Platform <> '' then
    Processor.Parameters.Add('LCL_PLATFORM=' + FLCL_Platform);

  //Set options
  s := FLazarusCompilerOptions;
  while Pos('  ',s)>0 do
  begin
    s:=StringReplace(s,'  ',' ',[rfReplaceAll]);
  end;
  s:=Trim(s);
  if Length(s)>0 then Processor.Parameters.Add('OPT='+s);

  Processor.Parameters.Add('useride');

  try
    WritelnLog(infotext+Processor.Executable+'. Params: '+Processor.Parameters.CommaText, true);
    Processor.Execute;
    result := Processor.ExitStatus=0;
    if result then
    begin
      infoln(infotext+'Lazarus rebuild succeeded',etDebug);
    end
    else
      WritelnLog(etError,infotext+'Failure trying to rebuild Lazarus. '+LineEnding+
        'Details: '+FErrorLog.Text,true);
  except
    on E: Exception do
    begin
      result:=false;
      WritelnLog(etError, infotext+'Exception trying to rebuild Lazarus '+LineEnding+
        'Details: '+E.Message,true);
    end;
  end;

  //We now have, for certain, a miscellaneousoptions.xml file.
  //This file has been generated by lazbuild..
  //Edit it to reflect our own settings, if needed.
  LazarusConfig:=TUpdateLazConfig.Create(LazarusPrimaryConfigPath);
  try
    i:=LazarusConfig.GetVariable(MiscellaneousConfig, 'MiscellaneousOptions/BuildLazarusOptions/Profiles/Count',0);
    if i>0 then
    begin
      // Change the build modes to reflect the options set.
      j:=LazarusConfig.GetVariable(MiscellaneousConfig, 'MiscellaneousOptions/BuildLazarusOptions/Profiles/Profile0/Options/Count', 0);
      s:=Trim(FLazarusCompilerOptions);
      if ((j=0) AND (Length(s)>0)) then
      begin
        LazarusConfig.SetVariable(MiscellaneousConfig, 'MiscellaneousOptions/BuildLazarusOptions/Profiles/Profile0/Options/Count', 1);
        LazarusConfig.SetVariable(MiscellaneousConfig, 'MiscellaneousOptions/BuildLazarusOptions/Profiles/Profile0/Options/Item1/Value', Trim(FLazarusCompilerOptions));
      end;
      if Length(FLCL_Platform)>0 then
      begin
        // Change the build modes to reflect the default LCL widget set.
        for j:=0 to (i-1) do
        begin
          infoln(infotext+'Changing default LCL_platforms for build-profiles in '+MiscellaneousConfig+' to build for '+FLCL_Platform, etInfo);
          LazarusConfig.SetVariable(MiscellaneousConfig, 'MiscellaneousOptions/BuildLazarusOptions/Profiles/Profile'+InttoStr(j)+'/LCLPlatform/Value', FLCL_Platform);
        end;
      end;
    end;
  finally
    LazarusConfig.Free;
  end;
end;
{$endif}

function TUniversalInstaller.GetValueFromKey(Key: string; sl: TStringList;
  recursion: integer): string;
// Look for entries with Key and process macros etc in value
var
  i,len:integer;
  s,macro:string;
  doublequote:boolean;
begin
  Key:=UpperCase(Key);
  s:='';
  if recursion=MAXRECURSIONS then
    exit;
  for i:=0 to sl.Count-1 do
    begin
    s:=sl[i];
    if (copy(UpperCase(s),1, length(Key))=Key) and ((s[length(Key)+1]='=') or (s[length(Key)+1]=' ')) then
      begin
      if pos('=',s)>0 then
        s:=trim(copy(s,pos('=',s)+1,length(s)));
      break;
      end;
    s:='';
    end;
  if s='' then //search general section
    for i:=0 to IniGeneralSection.Count-1 do
      begin
      s:=IniGeneralSection[i];
      if (copy(UpperCase(s),1, length(Key))=Key) and ((s[length(Key)+1]='=') or
        (s[length(Key)+1]=' ')) then
        begin
        if pos('=',s)>0 then
          s:=trim(copy(s,pos('=',s)+1,length(s)));
        break;
        end;
      s:='';
      end;
//expand macros
  doublequote:=true;
  if s<>'' then
    while pos('$(',s)>0 do
    begin
      i:=pos('$(',s);
      macro:=copy(s,i+2,length(s));
      if pos(')',macro)>0 then
        begin
        delete(macro,pos(')',macro),length(macro));
        macro:=UpperCase(macro);
        len:=length(macro)+3; // the brackets
        // For the directory macros, the user expects to add path separators himself in fpcup.ini,
        // so strip them out if they are there.
        if macro='BASEDIR' then
          macro:=ExcludeTrailingPathDelimiter(FBaseDirectory)
        else if macro='FPCDIR' then
          macro:=ExcludeTrailingPathDelimiter(FFPCInstallDir)
        else if macro='FPCBINDIR' then
            macro:=ExcludeTrailingPathDelimiter(FBinPath)
        else if macro='FPCBIN' then
            macro:=ExcludeTrailingPathDelimiter(FCompiler)
        else if macro='TOOLDIR' then
          {$IFDEF MSWINDOWS}
          // make is a binutil and should be located in the make dir
          macro:=ExcludeTrailingPathDelimiter(FMakeDir)
          {$ENDIF}
          {$IFDEF UNIX}
          // Strip can be anywhere in the path
          macro:=ExcludeTrailingPathDelimiter(ExtractFilePath(Which('make')))
          {$ENDIF}
        else if macro='GETEXEEXT' then
          macro:=GetExeExt
        {$ifndef FPCONLY}
        else if macro='LAZARUSDIR' then
          macro:=ExcludeTrailingPathDelimiter(FLazarusInstallDir)
        else if macro='LAZARUSPRIMARYCONFIGPATH' then
          macro:=ExcludeTrailingPathDelimiter(FLazarusPrimaryConfigPath)
        {$endif}
        else if macro='STRIPDIR' then
          {$IFDEF MSWINDOWS}
          // Strip is a binutil and should be located in the make dir
          macro:=ExcludeTrailingPathDelimiter(FMakeDir)
          {$ENDIF}
          {$IFDEF UNIX}
          // Strip can be anywhere in the path
          macro:=ExcludeTrailingPathDelimiter(ExtractFilePath(Which('strip')))
          {$ENDIF}
        else if macro='REMOVEDIRECTORY' then
        begin
          doublequote:=false;
          {$IFDEF MSWINDOWS}
          macro:='cmd /c rmdir /s /q';
          {$ENDIF}
          {$IFDEF UNIX}
          macro:='rm -Rf';
          {$ENDIF}
        end
        else if macro='REMOVEINSTALLDIRECTORY' then
        begin
          doublequote:=false;
          {$IFDEF MSWINDOWS}
          macro:='cmd /c rmdir '+'$(Installdir)'+' /s /q';
          {$ENDIF}
          {$IFDEF UNIX}
          macro:='rm -Rf '+'$(Installdir)';
          {$ENDIF}
        end
        else macro:=GetValueFromKey(macro,sl,recursion+1); //user defined value
        // quote if containing spaces
        if doublequote then
        begin
          //if pos(' ',macro)>0 then macro:='"'+macro+'"';
          macro:=MaybeQuoted(macro);
        end;
        delete(s,i,len);
        insert(macro,s,i);
      end;
    end;
  // correct path delimiter
  if (pos('URL',Key)<=0) and (pos('ADDTO',Key)<>1)then
  begin
    {$IFDEF MSWINDOWS}
    len:=2;
    {$ELSE}
    len:=1;
    {$ENDIF}
    for i:=len to length(s) do
      if ((s[i]='/') or (s[i]='\')){$IFDEF MSWINDOWS} AND (s[i-1]<>' '){$ENDIF} then
        s[i]:=DirectorySeparator;
  end;
  result:=s;
end;

function TUniversalInstaller.InitModule: boolean;
var
  PlainBinPath: string; //the directory above e.g. c:\development\fpc\bin\i386-win32
begin
  result:=true;
  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (InitModule): ';
  infoln(localinfotext+'Entering ...',etDebug);
  if InitDone then
    exit;
  if FVerbose then
    Processor.OnOutputM:=@DumpOutput;
  // While getting svn etc may help a bit, if Lazarus isn't installed correctly,
  // it probably won't help for normal use cases.
  // However, in theory, we could run only external modules and
  // only download some SVN repositories
  // So.. enable this.
  result:=(CheckAndGetTools) AND (CheckAndGetNeededBinUtils);
  if not(result) then
    infoln(localinfotext+'Missing required executables. Aborting.',etError);

  // Add fpc architecture bin and plain paths
  FBinPath:=IncludeTrailingPathDelimiter(FFPCInstallDir)+'bin'+DirectorySeparator+GetFPCTarget(true);
  PlainBinPath:=ExcludeTrailingPathDelimiter(FFPCInstallDir);
  // Need to remember because we don't always use ProcessEx
  FPath:=FBinPath+PathSeparator+
  {$IFDEF DARWIN}
  // pwd is located in /bin ... the makefile needs it !!
  // tools are located in /usr/bin ... the makefile needs it !!
  // don't ask, but this is needed when fpcupdeluxe runs out of an .app package ... quirk solved this way .. ;-)
  '/bin'+PathSeparator+'/usr/bin'+PathSeparator+
  {$ENDIF}
  PlainBinPath+PathSeparator;
  SetPath(FPath,true,false);
  // No need to build Lazarus IDE again right now; will
  // be changed by buildmodule/configmodule installexecute/
  // installpackage
  {$ifndef FPCONLY}
  FLazarusNeedsRebuild:=false;
  {$endif}
  InitDone:=result;
end;

{$ifndef FPCONLY}
function TUniversalInstaller.InstallPackage(PackagePath, WorkingDir: string; RegisterOnly:boolean; Silent:boolean=false): boolean;
var
  PackageName,PackageAbsolutePath: string;
  Path: String;
  lpkdoc:TConfig;
  lpkversion:TAPkgVersion;
  TxtFile:TextFile;
  RegisterPackageFeature:boolean;
  i,ReqCount:integer;
  ReqPackage:string;
  PackageFiles: TStringList;
begin
  result:=false;
  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (InstallPackage): ';

  PackageName:=ExtractFileNameWithoutExt(ExtractFileNameOnly(PackagePath));

  // Convert any relative path to absolute path, if it's not just a file/package name:
  if ExtractFileName(PackagePath)=PackagePath then
    // we have a relative path or packagename: let Lazarus handle it
    PackageAbsolutePath:=PackagePath
  else
   // Just use absolute path
    PackageAbsolutePath:=SafeExpandFileName(PackagePath);

  // find a Lazarus component, if any
  // all other packages will be ignored
  if (NOT FileExists(PackageAbsolutePath)) then
  begin
    PackageFiles:=FindAllFiles(IncludeTrailingPathDelimiter(LazarusInstallDir)+'components', PackageName+'.lpk' , true);
    if PackageFiles.Count>0 then PackageAbsolutePath:=PackageFiles.Strings[0];
    PackageFiles.Free;
  end;

  // find an OPM component, if any
  // all other packages will be ignored
  if (NOT FileExists(PackageAbsolutePath)) then
  begin
    PackageFiles:=FindAllFiles(IncludeTrailingPathDelimiter(LazarusPrimaryConfigPath)+'onlinepackagemanager'+DirectorySeparator+'packages', PackageName+'.lpk' , true);
    if PackageFiles.Count>0 then PackageAbsolutePath:=PackageFiles.Strings[0];
    PackageFiles.Free;
  end;

  lpkversion.Name:='unknown';
  if FileExists(PackageAbsolutePath) then
  begin
    lpkdoc:=TConfig.Create(PackageAbsolutePath);
    try
      // if only a filename (without path) is given, then lazarus will handle everything by itself
      // set lpkversion.Name to 'unknown' to flag this case
      // if not, get some extra info from package file !!
      if (ExtractFileName(PackagePath)<>PackagePath) then
      begin
        Path:='Package/';
        lpkversion.FileVersion:=lpkdoc.GetValue(Path+'Version',0);
        Path:='Package/Name/';
        lpkversion.Name:=lpkdoc.GetValue(Path+'Value','unknown');
        Path:='Package/Version/';
        lpkversion.GetVersion(lpkdoc,Path);
      end;

      // get package requirements
      Path:='Package/RequiredPkgs/';
      ReqCount:=lpkdoc.GetValue(Path+'Count',0);
      for i:=1 to ReqCount do
      begin
        Path:='Package/RequiredPkgs/';
        ReqPackage:=lpkdoc.GetValue(Path+'Item'+InttoStr(i)+'/PackageName/Value','unknown');
        // try to auto-resolve dependencies, but skip trivial packages
        // not very elegant, but working
        if (ReqPackage<>'unknown') AND
           (ReqPackage<>'LCL') AND
           (ReqPackage<>'LazControls') AND
           (ReqPackage<>'IDEIntf') AND
           (ReqPackage<>'FCL') AND
           (ReqPackage<>'LCLBase') AND
           (ReqPackage<>'LazControlDsgn') AND
           (ReqPackage<>'LazUtils') AND
           (ReqPackage<>'cairocanvas_pkg') AND
           (ReqPackage<>'SynEdit') AND
           (ReqPackage<>'DebuggerIntf') AND
           (ReqPackage<>'LazDebuggerGdbmi') AND
           (ReqPackage<>'CodeTools') then
        begin
          InstallPackage(ReqPackage, WorkingDir, RegisterOnly, true);
        end;
      end;
    finally
      lpkdoc.Free;
    end;
  end;

  //if (NOT Silent){ OR FVerbose} then
  begin
    if lpkversion.Name='unknown'
       then WritelnLog(localinfotext+'Installing '+PackageName,True)
       else WritelnLog(localinfotext+'Installing '+PackageName+' version '+lpkversion.AsString,True);
  end;

  Processor.Executable := IncludeTrailingPathDelimiter(LazarusInstallDir)+LAZBUILDNAME+GetExeExt;

  RegisterPackageFeature:=false;

  // get lazbuild version to see if we can register packages (available from version 1.7 and up)
  Processor.Parameters.Clear;
  Processor.Parameters.Add('--version');
  try
    Processor.Execute;
    result := (Processor.ExitStatus=0);
    if result then RegisterPackageFeature:=(GetNumericalVersion(Processor.OutputString)>=CalculateFullVersion(1,7,0));
  except
    on E: Exception do
    begin
      result:=false;
      WritelnLog(localinfotext+'Exception trying to getting lazbuild version. Details: '+E.Message,true);
    end;
  end;

  if (NOT result) then
  begin
    WritelnLog(localinfotext+'Error trying to add package '+PackageName,true);
    exit;
  end;

  if RegisterPackageFeature then RegisterPackageFeature:=RegisterOnly;

  Processor.Parameters.Clear;
  FErrorLog.Clear;
  if WorkingDir<>'' then
    Processor.CurrentDirectory:=ExcludeTrailingPathDelimiter(WorkingDir);
  Processor.Parameters.Clear;
  {$IFDEF DEBUG}
  Processor.Parameters.Add('--verbose');
  {$ELSE}
  Processor.Parameters.Add('--quiet');
  {$ENDIF}
  Processor.Parameters.Add('--pcp=' + DoubleQuoteIfNeeded(FLazarusPrimaryConfigPath));
  Processor.Parameters.Add('--cpu=' + GetTargetCPU);
  Processor.Parameters.Add('--os=' + GetTargetOS);
  if FLCL_Platform <> '' then
            Processor.Parameters.Add('--ws=' + FLCL_Platform);
  if RegisterPackageFeature then
    Processor.Parameters.Add('--add-package-link')
  else
    Processor.Parameters.Add('--add-package');
  Processor.Parameters.Add(DoubleQuoteIfNeeded(PackageAbsolutePath));
  try
    Processor.Execute;
    result := Processor.ExitStatus=0;
    // runtime packages will return false, but output will have info about package being "only for runtime"
    if result then
    begin
      if (NOT RegisterPackageFeature) then
      begin
        infoln('Marking Lazarus for rebuild based on package install for '+PackageAbsolutePath,etDebug);
        FLazarusNeedsRebuild:=true; //Mark IDE for rebuild
      end;
    end
    else
    begin
      // if the package is only for runtime, just add an lpl file to inform Lazarus of its existence and location ->> set result to true
      if (Pos('only for runtime',Processor.OutputString)>0) OR (RegisterPackageFeature)
         then result:=True
         else WritelnLog(localinfotext+'Error trying to add package '+PackageName+'. Details: '+FErrorLog.Text,true);
    end;
  except
    on E: Exception do
    begin
      WritelnLog(localinfotext+'Exception trying to add package '+PackageName+'. Details: '+E.Message,true);
    end;
  end;

  // all ok AND a filepath is given --> check / add lpl file to inform Lazarus of package excistence and location
  // if only a filename (without path) is given, then lazarus will handle everything (including lpl) by itself
  // in fact, we cannot do anything in that case : we do not know anything about the package !
  if (result) AND (lpkversion.Name<>'unknown') then
  begin
    if FVerbose then WritelnLog(localinfotext+'Checking lpl file for '+PackageName,true);
    Path := IncludeTrailingPathDelimiter(LazarusInstallDir)+
            'packager'+DirectorySeparator+
            'globallinks'+DirectorySeparator+
            LowerCase(lpkversion.Name)+'-'+lpkversion.AsString+'.lpl';

    if NOT FileExists(Path) then
    begin
      AssignFile(TxtFile,Path);
      try
        Rewrite(TxtFile);
        writeln(TxtFile,PackageAbsolutePath);
      finally
        CloseFile(TxtFile);
      end;
      if FVerbose then WritelnLog(localinfotext+'Created lpl file ('+Path+') with contents: '+PackageAbsolutePath,true);
    end;
  end;
end;

function TUniversalInstaller.RemovePackages(sl: TStringList): boolean;
const
  // The command that will be processed:
  Directive='AddPackage';
  Location='Workingdir';
var
  Failure: boolean;
  i:integer;
  RealDirective:string;
  PackagePath:string;
  Workingdir:string;
  BaseWorkingdir:string;
  RegisterOnly:boolean;
begin
  Failure:=false;
  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (RemovePackages): ';

  BaseWorkingdir:=GetValueFromKey(Location,sl);
  BaseWorkingdir:=FixPath(BaseWorkingdir);
  Workingdir:=BaseWorkingdir;

  for RegisterOnly:=false to true do
  begin

    // Go backward; reverse order to deal with any dependencies
    for i:=MAXINSTRUCTIONS downto -1 do
    begin
      if RegisterOnly then
        RealDirective:=Directive+'Link'
      else
        RealDirective:=Directive;

      if i>=0 then
      begin
        RealDirective:=RealDirective+IntToStr(i);
        Workingdir:=GetValueFromKey(Location+IntToStr(i),sl);
        Workingdir:=FixPath(Workingdir);
      end else
      begin
        Workingdir:=BaseWorkingdir;
      end;

      PackagePath:=GetValueFromKey(RealDirective,sl);
      PackagePath:=FixPath(PackagePath);

      // Skip over missing numbers:
      if PackagePath='' then continue;
      if NOT FileExists(PackagePath) then
      begin
        infoln(localinfotext+'Package '+ExtractFileName(PackagePath)+' not found ... skipping.',etInfo);
        UnInstallPackage(PackagePath);
        continue;
      end;
      if Workingdir='' then Workingdir:=BaseWorkingdir;
      // Try to uninstall everything, even if some of these fail.
      // Note: UninstallPackage used to have a WorkingDir parameter but
      // I'm wondering how to implement that as we have PackagePath already.
      if UnInstallPackage(PackagePath)=false then Failure:=true;
    end;
    result:=Failure;
  end;
end;
{$endif}

function TUniversalInstaller.AddPackages(sl:TStringList): boolean;
const
  // The command that will be processed:
  Directive='AddPackage';
  LOCATIONMAGIC='Workingdir';
  NAMEMAGIC='Name';
var
  i:integer;
  s:string;
  PackagePath:string;
  ModuleName:string;
  Workingdir:string;
  BaseWorkingdir:string;
  RealDirective:string;
  RegisterOnly:boolean;
begin
  BaseWorkingdir:=GetValueFromKey(LOCATIONMAGIC,sl);
  BaseWorkingdir:=FixPath(BaseWorkingdir);
  Workingdir:=BaseWorkingdir;
  ModuleName:=GetValueFromKey(NAMEMAGIC,sl);

  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (AddPackages of '+ModuleName+'): ';

  for RegisterOnly:=false to true do
  begin

    // trick: run from -1 to allow the above basic statements to be processed first
    for i:=-1 to MAXINSTRUCTIONS do
    begin
      if RegisterOnly then
        RealDirective:=Directive+'Link'
      else
        RealDirective:=Directive;

      if (i>=0) then
      begin
        RealDirective:=RealDirective+IntToStr(i);
        Workingdir:=GetValueFromKey(LOCATIONMAGIC+IntToStr(i),sl);
        Workingdir:=FixPath(Workingdir);
      end
      else
      begin
        Workingdir:=BaseWorkingdir;
      end;

      PackagePath:=GetValueFromKey(RealDirective,sl);
      PackagePath:=FixPath(PackagePath);

      // Skip over missing data:
      if (PackagePath='') then continue;
      if NOT FileExists(PackagePath) then
      begin
        infoln(localinfotext+'Package '+ExtractFileName(PackagePath)+' not found ... skipping.',etInfo);
        {$ifndef FPCONLY}
        UnInstallPackage(PackagePath);
        {$endif}
        continue;
      end;

      //Suggested packages are added by fpcupdeluxe itself
      //So, take responsibility of correct install
      //All other packages are users responsibility !

      if LowerCase(ModuleName)='suggestedpackages' then
      begin

        {$ifdef Darwin}
        {$ifdef CPUX64}

        // some packages are not suitable [yet] for Darwin x64 !
        // so skip them in case they are included.
        if
          (Pos('editormacroscript',PackagePath)>0) then
        begin
          infoln(localinfotext+'Incompatible package '+ExtractFileName(PackagePath)+' skipped.',etInfo);
          continue;
        end;

        {$endif CPUX64}
        {$else}
        {$ifdef BSD}
        // these packages are not suitable for OpenBSD: their FPC units are not included by default !
        // so skip them in case they are included.
        if (
            (Pos('sqldblaz',PackagePath)>0)
            OR
            (Pos('dbflaz',PackagePath)>0)
            OR
            (Pos('leakview',PackagePath)>0)
            OR
            (Pos('lazdatadict',PackagePath)>0)
            OR
            (Pos('lazdbexport',PackagePath)>0)
           ) then
        begin
          infoln(localinfotext+'Incompatible package '+ExtractFileName(PackagePath)+' skipped.',etInfo);
          continue;
        end;
        {$endif}

        {$endif Darwin}

        {$if (NOT defined(CPUI386)) AND (NOT defined(CPUX86_64)) AND (NOT defined(CPUARM))}
        // the package PascalScript is only suitable for i386, x86_64 and arm !
        // so skip in case package was included.
        if (Pos('pascalscript',PackagePath)>0) then
        begin
          infoln(localinfotext+'Incompatible package '+ExtractFileName(PackagePath)+' skipped.',etInfo);
          continue;
        end;
        {$endif}

        {$if (NOT defined(CPUI386)) AND (NOT defined(CPUX86_64)) AND (NOT defined(CPUARM))}
        // the package macroscript (depending on PascalScript) is only suitable for i386, x86_64 and arm !
        // so skip in case package was included.
        if (Pos('editormacroscript',PackagePath)>0) then
        begin
          infoln(localinfotext+'Incompatible package '+ExtractFileName(PackagePath)+' skipped.',etInfo);
          continue;
        end;
        {$endif}

        {
        if (NOT FileExists(PackagePath)) OR (PackagePath='') then
        begin
          for j:=0 to sl.Count-1 do
          begin
            if (Pos(RealDirective+'=',StrUtils.DelSpace(sl[j]))>0) then
            begin
              sl.Delete(j);
              break;
            end;
          end;
          continue;
        end;
        }

      end;

      if Workingdir='' then Workingdir:=BaseWorkingdir;

      {$ifndef FPCONLY}
      result:=InstallPackage(PackagePath,WorkingDir,RegisterOnly);
      if not result then
      begin
        infoln(localinfotext+'Error while installing package '+PackagePath+'.',etWarning);
        if FVerbose then WritelnLog(localinfotext+'Error while installing package '+PackagePath+'.',false);
        break;
      end;
      {$endif}
    end;
  end;

end;

{$IFDEF MSWINDOWS}
function TUniversalInstaller.CreateInstallers(Directive: string; sl: TStringList;ModuleName:string): boolean;
// Create installers
// For now only support WINDOWS/WINDOWS32/WIN32/WINX86, and ignore others
var
  i:integer;
  InstallDir,exec:string;
  Installer: TWinInstaller;
  Workingdir:string;
  BaseWorkingdir:string;
begin
  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (CreateInstallers): ';

  result:=true; //succeed by default
  BaseWorkingdir:=GetValueFromKey('Workingdir',sl);
  BaseWorkingdir:=FixPath(BaseWorkingdir);

  for i:=0 to MAXINSTRUCTIONS do
    begin
    if i=0
       then exec:=GetValueFromKey(Directive,sl)
       else exec:=GetValueFromKey(Directive+IntToStr(i),sl);
    // Skip over missing numbers:
    if exec='' then continue;
    Workingdir:=GetValueFromKey('Workingdir'+IntToStr(i),sl);
    Workingdir:=FixPath(Workingdir);
    if Workingdir='' then Workingdir:=BaseWorkingdir;
    case uppercase(exec) of
      'WINDOWS','WINDOWS32','WIN32','WINX86': {good name};
      else
        begin
        writelnlog(localinfotext+'Ignoring unknown installer name '+exec+'.',true);
        continue;
        end;
    end;

    if FVerbose then WritelnLog(localinfotext+'Running CreateInstallers for '+exec,true);
    // Convert any relative path to absolute path:
    InstallDir:=IncludeTrailingPathDelimiter(SafeExpandFileName(GetValueFromKey('InstallDir',sl)));
    InstallDir:=FixPath(InstallDir);
    if InstallDir<>'' then
      ForceDirectoriesSafe(InstallDir);
    Installer:=TWinInstaller.Create(InstallDir,FCompiler,FVerbose);
    try
      //todo: make installer module-level; split out config from build part; would also require fixed svn dirs etc
      Installer.FPCDir:=FPCInstallDir;
      {$ifndef FPCONLY}
      Installer.LazarusDir:=FLazarusInstallDir;
      // todo: following not strictly needed:?!?
      Installer.LazarusPrimaryConfigPath:=FLazarusPrimaryConfigPath;
      {$endif}
      result:=Installer.BuildModuleCustom(ModuleName);
    finally
      Installer.Free;
    end;

    if not result then
      begin
      WritelnLog(etError,localinfotext+'CreateInstallers for '+exec+' failed. Stopping installer creation.',true);
      break; //fail on first installer failure
      end;
    end;
end;
{$ENDIF MSWINDOWS}

function TUniversalInstaller.RunCommands(Directive: string;sl:TStringList): boolean;
var
  i,j:integer;
  exec:string;
  s:string;
  BaseWorkingdir:string;
  Workingdir:string;
begin
  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (RunCommands: '+Directive+'): ';

  result:=true; //not finding any instructions at all should not be a problem.
  BaseWorkingdir:=GetValueFromKey('Workingdir',sl);
  BaseWorkingdir:=FixPath(BaseWorkingdir);
  for i:=0 to MAXINSTRUCTIONS do
  begin
    if i=0
       then exec:=GetValueFromKey(Directive,sl)
       else exec:=GetValueFromKey(Directive+IntToStr(i),sl);
    // Skip over missing numbers:
    if exec='' then continue;

    exec:=FixPath(exec);

    if (Pos('fpgui',exec)>0) then
     begin
       {$ifdef MSWindows}
       if (Pos('x11',exec)>0) then continue;
       {$else}
       if (Pos('gdi',exec)>0) then continue;
       {$endif}
     end;

    {$ifndef FPCONLY}
    j:=Pos(LAZBUILDNAME,lowerCase(exec));
    if j>0 then
    begin
      {$IFDEF MSWINDOWS}
      j:=Pos(LAZBUILDNAME+'.exe',lowerCase(exec));
      if j>0 then exec:=StringReplace(exec,LAZBUILDNAME+'.exe',LAZBUILDNAME,[rfIgnoreCase]);
      {$ENDIF}

      //Set lazbuild options
      {$IFDEF DEBUG}
      s:='--verbose';
      {$ELSE}
      s:='--quiet';
      {$ENDIF}
      if FLCL_Platform<>'' then s:=s+' --ws=' + FLCL_Platform;
      exec:=StringReplace(exec,LAZBUILDNAME,LAZBUILDNAME+' '+s,[rfIgnoreCase]);
    end;
    {$endif}
    Workingdir:=GetValueFromKey('Workingdir'+IntToStr(i),sl);
    Workingdir:=FixPath(Workingdir);
    if Workingdir='' then Workingdir:=BaseWorkingdir;
    if FVerbose then WritelnLog(localinfotext+'Running ExecuteCommand[InDir] for '+exec,true);
    try
      result:=false;
      if Length(WorkingDir)>0 then
        j:=ExecuteCommandInDir(exec,Workingdir,s,FPath,FVerbose)
      else
        j:=ExecuteCommand(exec,s,FVerbose);
      if j=0 then
      begin
        result:=true;
        {$ifndef FPCONLY}
        // If it is likely user used lazbuid to compile a package, assume
        // it is design-time (except when returning an runtime message) and mark IDE for rebuild
        if (pos(LAZBUILDNAME,lowerCase(exec))>0) and
          (pos('.lpk',lowercase(exec))>0) and
          (pos('only for runtime',lowercase(s))=0)
        then
        begin
          infoln(localinfotext+'Marking Lazarus for rebuild based on exec line '+exec,etDebug);
          FLazarusNeedsRebuild:=true;
        end;
        {$endif}
      end
      else
      begin
        WritelnLog(etError, localinfotext+'Running '+exec+' returned with an error.',true);
        WritelnLog(etError, localinfotext+'Error-code: '+InttoStr(j),true);
        WritelnLog(etError, localinfotext+'Error message (if any): '+s,true);
        break;
      end;
    except
      on E: Exception do
      begin
        WritelnLog(etError, localinfotext+'Exception trying to execute '+exec+LineEnding+
          'Details: '+E.Message,true);
      end;
    end;
  end;
end;

{$ifndef FPCONLY}
function TUniversalInstaller.UnInstallPackage(PackagePath: string): boolean;
const
  PACKAGE_KEYSTART='UserPkgLinks/';
  MISC_KEYSTART='MiscellaneousOptions/BuildLazarusOptions/StaticAutoInstallPackages/';
var
  cnt, i: integer;
  key,value:string;
  LazarusConfig: TUpdateLazConfig;
  PackageName,PackageAbsolutePath: string;
  xmlfile: string;
  lpkdoc:TConfig;
  lpkversion:TAPkgVersion;
begin
  result:=false;

  PackageName:=ExtractFileNameWithoutExt(ExtractFileNameOnly(PackagePath));

  localinfotext:=Copy(Self.ClassName,2,MaxInt)+' (UnInstallPackage: '+PackageName+'): ';

  infoln(localinfotext+'Entering ...',etDebug);

  infoln(localinfotext+'Removing package from config-files',etInfo);

  // Convert any relative path to absolute path, if it's not just a file/package name:
  if ExtractFileName(PackagePath)=PackagePath then
    PackageAbsolutePath:=PackagePath
  else
    PackageAbsolutePath:=SafeExpandFileName(PackagePath);
  if FVerbose then WritelnLog(localinfotext+'Going to uninstall package',true);

  LazarusConfig:=TUpdateLazConfig.Create(FLazarusPrimaryConfigPath);
  try
    try
      xmlfile:=PackageConfig;
      cnt:=LazarusConfig.GetVariable(xmlfile, PACKAGE_KEYSTART+'Count', 0);
      // check if package is already registered
      i:=cnt;
      while i>0 do
      begin
        // Ignore package name casing
        if UpperCase(LazarusConfig.GetVariable(xmlfile, PACKAGE_KEYSTART+'Item'+IntToStr(i)+'/'
          +'Name/Value'))
          =UpperCase(PackageName) then
            break;
        i:=i-1;
      end;
      if i>1 then // found
      begin
        infoln(localinfotext+'Found the package as item '+IntToStr(i)+' ... removing it from '+xmlfile,etInfo);
        FLazarusNeedsRebuild:=true;
        while i<cnt do
        begin
          LazarusConfig.MovePath(
            xmlfile,
            PACKAGE_KEYSTART+'Item'+IntToStr(i+1)+'/',
            PACKAGE_KEYSTART+'Item'+IntToStr(i)+'/');
          i:=i+1;
        end;
        LazarusConfig.DeletePath(xmlfile, PACKAGE_KEYSTART+'Item'+IntToStr(cnt)+'/');
        LazarusConfig.SetVariable(xmlfile, PACKAGE_KEYSTART+'Count', cnt-1);
      end;

      xmlfile:=MiscellaneousConfig;
      cnt:=LazarusConfig.GetVariable(xmlfile, MISC_KEYSTART+'Count', 0);
      // check if package is already registered
      i:=cnt;
      while i>0 do
      begin
        // Ignore package name casing
        if UpperCase(LazarusConfig.GetVariable(xmlfile, MISC_KEYSTART+'Item'+IntToStr(i)+'/Value'))=UpperCase(PackageName) then break;
        i:=i-1;
      end;
      if i>1 then // found
      begin
        infoln(localinfotext+'Found the package as item '+IntToStr(i)+' ... removing it from '+xmlfile,etInfo);
        FLazarusNeedsRebuild:=true;
        while i<cnt do
        begin
          value:=LazarusConfig.GetVariable(xmlfile, MISC_KEYSTART+'Item'+IntToStr(i+1)+'/Value');
          LazarusConfig.SetVariable(xmlfile, MISC_KEYSTART+'Item'+IntToStr(i)+'/Value', value);
          // Move does mot work. ToDo !
          //infoln(localinfotext+'Moving '+MISC_KEYSTART+'Item'+IntToStr(i+1)+' towards '+MISC_KEYSTART+'Item'+IntToStr(i),etDebug);
          //LazarusConfig.MovePath(xmlfile,
          //  MISC_KEYSTART+'Item'+IntToStr(i+1)+'/',
          //  MISC_KEYSTART+'Item'+IntToStr(i)+'/');
          i:=i+1;
        end;
        infoln(localinfotext+'Deleting duplicate '+MISC_KEYSTART+'Item'+IntToStr(cnt),etDebug);
        LazarusConfig.DeletePath(xmlfile, MISC_KEYSTART+'Item'+IntToStr(cnt)+'/');
        infoln(localinfotext+'Setting '+MISC_KEYSTART+'Count to '+IntToStr(cnt-1),etDebug);
        LazarusConfig.SetVariable(xmlfile, MISC_KEYSTART+'Count', cnt-1);
      end;

    except
      on E: Exception do
      begin
        Result := false;
        infoln(localinfotext+'Failure setting Lazarus config: ' + E.ClassName + '/' + E.Message, etError);
      end;
    end;
  finally
    LazarusConfig.Free;
  end;

  if (ExtractFileName(PackagePath)<>PackagePath) then
  begin
    if FVerbose then WritelnLog(localinfotext+'Checking lpl file for '+ExtractFileName(PackagePath),true);
    if FileExists(PackageAbsolutePath) then
    begin
      lpkdoc:=TConfig.Create(PackageAbsolutePath);
      try
        key:='Package/';
        try
          lpkversion.FileVersion:=lpkdoc.GetValue(key+'Version',0);
        except
          lpkversion.FileVersion:=2;// On error assume version 2.
        end;
        key:='Package/Name/';
        lpkversion.Name:=lpkdoc.GetValue(key+'Value','');
        if (length(lpkversion.Name)>0) then
        begin
          key:='Package/Version/';
          lpkversion.GetVersion(lpkdoc,key);
          PackageAbsolutePath := IncludeTrailingPathDelimiter(LazarusInstallDir)+
                                 'packager'+DirectorySeparator+
                                 'globallinks'+DirectorySeparator+
                                 LowerCase(lpkversion.Name)+'-'+lpkversion.AsString+'.lpl';
          if SysUtils.DeleteFile(PackageAbsolutePath) then
            infoln(localinfotext+'Package '+PackageAbsolutePath+' deleted',etInfo);
        end;
      finally
        lpkdoc.Free;
      end;
    end;
  end;

  result:=true;
end;
{$endif}

// Runs all InstallExecute<n> commands inside a specified module
{ todo: Note that for some reason the installpackage etc commands are processed in configmodule.
Shouldn't this be changed? }
function TUniversalInstaller.BuildModule(ModuleName: string): boolean;
var
  idx:integer;
  sl:TStringList;
begin
  result:=inherited;
  result:=InitModule;
  if not result then exit;
  // Log to console only:
  infoln(infotext+'Building module '+ModuleName+'...',etInfo);
  idx:=UniModuleList.IndexOf(ModuleName);
  if idx>=0 then
    begin
    sl:=TStringList(UniModuleList.Objects[idx]);

    // Run all InstallExecute<n> commands:
    // More detailed logging only if verbose or debug:
    if FVerbose then WritelnLog(infotext+'Building module '+ModuleName+' running all InstallExecute commands in: '+LineEnding+
      sl.text,true);
    result:=RunCommands('InstallExecute',sl);

    // Run all CreateInstaller<n> commands; for now Windows only
    {$IFDEF MSWINDOWS}
    if FVerbose then WritelnLog(infotext+'Building module '+ModuleName+' running all CreateInstaller commands in: '+LineEnding+
      sl.text,true);
    result:=CreateInstallers('CreateInstaller',sl, ModuleName);
    {$ENDIF MSWINDOWS}
    end
  else
    result:=false;
end;

function TUniversalInstaller.CleanModule(ModuleName: string): boolean;
//var
//  DeleteList:TStringList;
//  FileCounter:integer;
begin
  result:=inherited;
  result:=InitModule;
  if not result then exit;

  (*
  if (Length(FSourceDirectory)>0) AND (DirectoryExists(FSourceDirectory)) then
  begin
    DeleteList := TStringList.Create;
    try
      FindAllFiles(DeleteList,FSourceDirectory, '*.ppu; *.compiled; *.o', True);
      if DeleteList.Count > 0 then
      begin
        for FileCounter := 0 to (DeleteList.Count-1) do
        begin
          if Pos(GetTargetCPUOS,DeleteList.Strings[FileCounter])>0 then
          begin
            DeleteFile(DeleteList.Strings[FileCounter]);
            infoln(infotext+'Deleting '+DeleteList.Strings[FileCounter],etDebug);
          end;
        end;
      end;
    finally
      DeleteList.Free;
    end;
  end;
  *)

  result:=true;
end;

// Processes a single module (i.e. section in fpcup.ini)
function TUniversalInstaller.ConfigModule(ModuleName: string): boolean;
{$ifndef FPCONLY}
var
  idx,cnt,i:integer;
  sl:TStringList;
  LazarusConfig:TUpdateLazConfig;
  directive,xmlfile,key:string;

function AddToLazXML(xmlfile:string):boolean;
var
  i,j,k:integer;
  exec,key,counter,oldcounter,filename:string;
  count:integer;
begin
  result:=true;
  //filename:=xmlfile;
  //if rightstr(filename,4)<>'.xml' then
  filename:=xmlfile+'.xml';
  oldcounter:='';
  for i:=0 to MAXINSTRUCTIONS do
  begin
    // Read command, e.g. AddToHelpOptions1
    // and deduce which XML settings file to update
    if i=0
       then exec:=GetValueFromKey('AddTo'+xmlfile,sl)
       else exec:=GetValueFromKey('AddTo'+xmlfile+IntToStr(i),sl);
    // Skip over missing numbers:
    if exec='' then continue;
    //split off key and value
    j:=1;
    while j<=length(exec) do
    begin
      j:=j+1;
      if exec[j]=':' then break;
    end;
    key:=trim(copy(exec,1,j-1));
    { Use @ as a prefix in your keys to indicate a counter of subsections.
    The key afterwards is used to determine the variable that keeps the count.
    Example:
    <ExternalTools Count="2">
      <Tool1>
        <Format Version="2"/>
        <Title Value="LazDataDesktop"/>
        <Filename Value="C:\Lazarus\tools\lazdatadesktop\lazdatadesktop.exe"/>
      </Tool1>
    => use @Count in your key to match ExternalTools Count="2"
    }
    k:=pos('@',key);
    if k<=0 then
      LazarusConfig.SetVariable(filename,key,trim(copy(exec,j+1,length(exec))))
    else //we got a counter
    begin
      counter:= trim(copy(key,k+1,length(key)));
      key:=trim(copy(key,1,k-1));
      if oldcounter<>counter then //read write counter only once
      begin
        count:=LazarusConfig.GetVariable(filename,counter,0)+1;
        LazarusConfig.SetVariable(filename,counter,count);
        oldcounter:=counter;
      end;
      k:=pos('#',key);
      while k>0 do
      begin //replace # with current count
        delete(key,k,1);
        insert(IntToStr(count),key,k);
        k:=pos('#',key);
      end;
      LazarusConfig.SetVariable(filename,key,trim(copy(exec,j+1,length(exec))));
    end;
    if (not result) then break;
  end;
end;
{$endif}
begin
// Add values to lazarus config files. Syntax:
// AddTo<filename><number>=key[@counter]:value
// filename: xml file to update in --primary-config-path. The list of files is limited to the list below for security reasons.
// number: command number, starting from 1 for every file. The numbers have to be sequential. Scanning stops at the first missing number.
// key: the attribute to change in the format aa/bb/cc
// counter: the attribute key for the counter used to keep track of lists. Used to insert a new value in a list. Read and incremented by 1;
//          When using a counter, <key> can use a the '#' character as a placeholder for the new count written to <counter>
// value:  the string value to store in <key>.
  result:=inherited;
  result:=InitModule;
  if not result then exit;
  {$ifndef FPCONLY}
  idx:=UniModuleList.IndexOf(ModuleName);
  if idx>=0 then
  begin
      sl:=TStringList(UniModuleList.Objects[idx]);
      // Process AddPackage
      // Compile a package and add it to the list of user-installed packages.
      // Usage:
      // AddPackage<n>=<path to package>\<package.lpk>
      // As this will modify config values, we keep it out the section below.
      AddPackages(sl);

      LazarusConfig:=TUpdateLazConfig.Create(FLazarusPrimaryConfigPath);
      try
        try
          // For security reasons, the files below are the only files we allow adding to/modifying:
          AddToLazXML('environmentoptions'); //general options
          AddToLazXML('helpoptions');
          AddToLazXML('miscellaneousoptions'); //e.g. list of packages to be installed on recompile
          AddToLazXML('packagefiles'); //e.g. list of available packages
          // Process special directives
          Directive:=GetValueFromKey('RegisterExternalTool',sl);
          if Directive<>'' then
          begin
            xmlfile:=EnvironmentConfig;
            key:='EnvironmentOptions/ExternalTools/Count';
            cnt:=LazarusConfig.GetVariable(xmlfile,key,0);
            // check if tool is already registered
            i:=cnt;
            while i>0 do
            begin
              if LazarusConfig.GetVariable(xmlfile,'EnvironmentOptions/ExternalTools/Tool'+IntToStr(i)+'/Title/Value')
                =ModuleName then
                  break;
              i:=i-1;
            end;
            if i<1 then //not found
            begin
              cnt:=cnt+1;
              LazarusConfig.SetVariable(xmlfile,key,cnt);
            end
            else
              cnt:=i;
            key:='EnvironmentOptions/ExternalTools/Tool'+IntToStr(cnt)+'/';
            LazarusConfig.SetVariable(xmlfile,key+'Format/Version','2');
            LazarusConfig.SetVariable(xmlfile,key+'Title/Value',ModuleName);
            infoln(infotext+'Going to register external tool '+Directive+GetExeExt,etDebug);
            LazarusConfig.SetVariable(xmlfile,key+'Filename/Value',Directive+GetExeExt);

            // If we're registering external tools, we should look for associated/
            // detailed directives as well:
            Directive:=GetValueFromKey('RegisterExternalToolCmdLineParams',sl);
            if Directive<>'' then
              LazarusConfig.SetVariable(xmlfile,key+'CmdLineParams/Value',Directive);
            Directive:=GetValueFromKey('RegisterExternalToolWorkingDirectory',sl);
            if Directive<>'' then
              LazarusConfig.SetVariable(xmlfile,key+'WorkingDirectory/Value',Directive);
            Directive:=GetValueFromKey('RegisterExternalToolScanOutputForFPCMessages',sl);
            if (Directive<>'') and (Directive<>'0') then // default = false
              LazarusConfig.SetVariable(xmlfile,key+'ScanOutputForFPCMessages/Value','True')
            else
              LazarusConfig.DeleteVariable(xmlfile,key+'ScanOutputForFPCMessages/Value');
            Directive:=GetValueFromKey('RegisterExternalToolScanOutputForMakeMessages',sl);
            if (Directive<>'') and (Directive<>'0') then // default = false
              LazarusConfig.SetVariable(xmlfile,key+'ScanOutputForMakeMessages/Value','True')
            else
              LazarusConfig.DeleteVariable(xmlfile,key+'ScanOutputForMakeMessages/Value');
            Directive:=GetValueFromKey('RegisterExternalToolHideMainForm',sl);
            if Directive='0' then // default = true
              LazarusConfig.SetVariable(xmlfile,key+'HideMainForm/Value','False')
            else
              LazarusConfig.DeleteVariable(xmlfile,key+'HideMainForm/Value');
          end;

          Directive:=GetValueFromKey('RegisterHelpViewer',sl);
          if Directive<>'' then
            begin
            xmlfile:=HelpConfig;
            key:='Viewers/TChmHelpViewer/CHMHelp/Exe';
            infoln(infotext+'Going to register help viewer '+Directive+GetExeExt,etDebug);
            LazarusConfig.SetVariable(xmlfile,key,Directive+GetExeExt);
            end;

          // Register path to help source if given
          Directive:=GetValueFromKey('RegisterLazDocPath',sl);
          if Directive<>'' then
            begin
            infoln(infotext+'Going to add docpath '+Directive,etDebug);
            LazDocPathAdd(Directive, LazarusConfig);
            end;
        except
          on E: Exception do
          begin
            if Directive='' then
              writelnlog(etError,infotext+'Exception '+E.ClassName+'/'+E.Message+' configuring module: '+ModuleName, true)
            else
              writelnlog(etError,infotext+'Exception '+E.ClassName+'/'+E.Message+' configuring module: '+ModuleName+' (parsing directive:'+Directive+')', true);
          end;
        end;
      finally
        LazarusConfig.Destroy;
      end;

      // If Lazarus was marked for rebuild, do so:
      if FLazarusNeedsRebuild then
      begin
        infoln(infotext+'Going to rebuild Lazarus because packages were installed.',etInfo);
        result:=RebuildLazarus;
      end;
  end
  else
  begin
    // Could not find module in module list
    writelnlog(etError, infotext+'Could not find specified module '+ModuleName,true);
    result:=false;
  end;
  {$endif}
end;

// Download from SVN, hg, git for module
function TUniversalInstaller.GetModule(ModuleName: string): boolean;
var
  idx,i,j:integer;
  PackageSettings:TStringList;
  RemoteURL,InstallDir:string;
  BeforeRevision: string='';
  AfterRevision: string='';
  UpdateWarnings: TStringList;
  FilesList: TStringList;
  aFile:string;
  ResultCode: longint;
  SourceOK:boolean;
  PackageName:string;
  aName:string;
  Direction:string;
begin
  result:=inherited;
  result:=InitModule;
  if not result then exit;
  SourceOK:=false;
  idx:=UniModuleList.IndexOf(ModuleName);
  if idx>=0 then
  begin
    PackageSettings:=TStringList(UniModuleList.Objects[idx]);

    WritelnLog(infotext+'Getting module '+ModuleName,True);
    InstallDir:=GetValueFromKey('InstallDir',PackageSettings);
    InstallDir:=FixPath(InstallDir);
    InstallDir:=ExcludeTrailingPathDelimiter(InstallDir);
    FSourceDirectory:=InstallDir;

    if InstallDir<>'' then
      ForceDirectoriesSafe(InstallDir);

    // Common keywords for all repo methods
    FDesiredRevision:=GetValueFromKey('Revision',PackageSettings);
    FDesiredBranch:=GetValueFromKey('Branch',PackageSettings);

    // Handle Git URLs
    RemoteURL:=GetValueFromKey('GITURL',PackageSettings);
    if (RemoteURL<>'') AND (NOT SourceOK) then
    begin
      infoln(infotext+'Going to download/update from GIT repository '+RemoteURL,etInfo);
      infoln(infotext+'Please wait: this can take some time (if repo is big or has a large history).',etInfo);
      UpdateWarnings:=TStringList.Create;
      try
        FUrl:=RemoteURL;
        FGitClient.ModuleName:=ModuleName;
        FGitClient.Verbose:=FVerbose;
        FGitClient.ExportOnly:=FExportOnly;
        result:=DownloadFromGit(ModuleName,BeforeRevision,AfterRevision,UpdateWarnings);
        SourceOK:=result;
        if UpdateWarnings.Count>0 then
        begin
          WritelnLog(UpdateWarnings.Text);
        end;
      finally
        UpdateWarnings.Free;
      end;
      if SourceOK
         then infoln(infotext+'Download/update from GIT repository ok.',etInfo)
         else infoln(infotext+'Getting GIT repo failed. Trying another source, if available.',etWarning)
    end;


    // Handle SVN urls
    RemoteURL:=GetValueFromKey('SVNURL',PackageSettings);
    if (RemoteURL<>'') AND (NOT SourceOK) then
    begin
      infoln(infotext+'Going to download/update from SVN repository '+RemoteURL,etInfo);
      infoln(infotext+'Please wait: this can take some time (if repo is big or has a large history).',etInfo);
      UpdateWarnings:=TStringList.Create;
      try
        FURL:=RemoteURL;
        FSVNClient.ModuleName:=ModuleName;
        FSVNClient.Verbose:=FVerbose;
        FSVNClient.ExportOnly:=FExportOnly;
        FSVNClient.UserName:=GetValueFromKey('UserName',PackageSettings);
        FSVNClient.Password:=GetValueFromKey('Password',PackageSettings);
        result:=DownloadFromSVN(ModuleName,BeforeRevision,AfterRevision,UpdateWarnings);
        SourceOK:=(result) AND (DirectoryExists(IncludeTrailingPathDelimiter(FSourceDirectory+'.svn')) OR FExportOnly);
        if UpdateWarnings.Count>0 then
        begin
          WritelnLog(UpdateWarnings.Text);
        end;
      finally
        UpdateWarnings.Free;
      end;
      if SourceOK
         then infoln(infotext+'Download/update from SVN repository ok.',etInfo)
         else infoln(infotext+'Getting SVN repo failed. Trying another source, if available.',etWarning)
    end;

    // Handle HG URLs
    RemoteURL:=GetValueFromKey('HGURL',PackageSettings);
    if (RemoteURL<>'') AND (NOT SourceOK) then
    begin
      infoln(infotext+'Going to download/update from HG repository '+RemoteURL,etInfo);
      infoln(infotext+'Please wait: this can take some time (if repo is big or has a large history).',etInfo);
      UpdateWarnings:=TStringList.Create;
      try
        FUrl:=RemoteURL;
        FHGClient.ModuleName:=ModuleName;
        FHGClient.Verbose:=FVerbose;
        FHGClient.ExportOnly:=FExportOnly;
        result:=DownloadFromHG(ModuleName,BeforeRevision,AfterRevision,UpdateWarnings);
        SourceOK:=result;
        if result=false then
          WritelnLog(infotext+'HG error downloading from '+RemoteURL+'. Continuing regardless.',true);
        if UpdateWarnings.Count>0 then
        begin
          WritelnLog(UpdateWarnings.Text);
        end;
      finally
        UpdateWarnings.Free;
      end;
      if SourceOK
         then infoln(infotext+'Download/update from HG repository ok.',etInfo)
         else infoln(infotext+'Getting HG repo failed. Trying another source, if available.',etWarning)
    end;

    RemoteURL:=GetValueFromKey('ArchiveURL',PackageSettings);
    if (RemoteURL<>'') AND (NOT SourceOK) then
    begin
      infoln(infotext+'Going to download from archive '+RemoteURL,etInfo);
      aName:=GetFileNameFromURL(RemoteURL);
      if Length(aName)>0 then aName:=SysUtils.ExtractFileExt(aName);
      //If no extension, assume zip
      if Length(aName)=0 then aName:='zip';
      aFile := GetTempFileNameExt('','FPCUPTMP',aName);
      WritelnLog(infotext+'Going to download '+RemoteURL+' into '+aFile,false);
      try
        result:=Download(FUseWget, RemoteURL, aFile);
      except
        on E: Exception do
        begin
         result:=false;
        end;
      end;

      if result=false then
         WritelnLog(etError,infotext+'Error downloading from '+RemoteURL+'. Continuing regardless.',True);

      if result then
      begin
        WritelnLog(infotext+'Download ok',True);

        //Delete existing files from install directory
        DeleteDirectory(InstallDir,True);

        // Extract, overwrite
        case UpperCase(sysutils.ExtractFileExt(aFile)) of
           '.ZIP','.TMP':
              begin
                //ResultCode:=ExecuteCommand(FUnzip+' -o -d '+IncludeTrailingPathDelimiter(InstallDir)+' '+aFile,FVerbose);
                with TNormalUnzipper.Create do
                begin
                  try
                    ResultCode:=Ord(NOT DoUnZip(aFile,IncludeTrailingPathDelimiter(InstallDir),[]));
                  finally
                    Free;
                  end;
                end;
              end;
           '.7Z':
              begin
                ResultCode:=ExecuteCommand(F7zip+' x -o"'+IncludeTrailingPathDelimiter(InstallDir)+'" '+aFile,FVerbose);
                {$ifdef MSWINDOWS}
                // try winrar
                if ResultCode <> 0 then
                begin
                  ResultCode:=ExecuteCommand('"C:\Program Files (x86)\WinRAR\WinRAR.exe" x '+aFile+' "'+IncludeTrailingPathDelimiter(InstallDir)+'"',FVerbose);
                end;
                {$endif}
                if ResultCode <> 0 then
                begin
                  ResultCode:=ExecuteCommand('7z'+GetExeExt+' x -o"'+IncludeTrailingPathDelimiter(InstallDir)+'" '+aFile,FVerbose);
                end;
                if ResultCode <> 0 then
                begin
                  ResultCode:=ExecuteCommand('7za'+GetExeExt+' x -o"'+IncludeTrailingPathDelimiter(InstallDir)+'" '+aFile,FVerbose);
                end;
              end;
           '.rar':
              begin
                ResultCode:=ExecuteCommand(FUnrar+' x "'+aFile+'" "'+IncludeTrailingPathDelimiter(InstallDir)+'"',FVerbose);
                {$ifdef MSWINDOWS}
                // try winrar
                if ResultCode <> 0 then
                begin
                  ResultCode:=ExecuteCommand('"C:\Program Files (x86)\WinRAR\WinRAR.exe" x '+aFile+' "'+IncludeTrailingPathDelimiter(InstallDir)+'"',FVerbose);
                end;
                {$endif}
              end;

           else {.tar and all others}
              ResultCode:=ExecuteCommand(FTar+' -xf '+aFile +' -C '+ExcludeTrailingPathDelimiter(InstallDir),FVerbose);
           end;
        if ResultCode <> 0 then
        begin
          result := False;
          infoln(infotext+'Unpack of '+aFile+' failed with resultcode: '+IntToStr(ResultCode),etWarning);
        end;
      end;
      SysUtils.Deletefile(aFile); //Get rid of temp file.
      SourceOK:=result;
      if SourceOK then
      begin
        infoln(infotext+'Download from archive ok.',etInfo);

        // Check specials : sometimes, an extra path is added when unpacking, installing
        // Move files up ... tricky, but necessary unfortunately ...
        if ((Pos('github.com',RemoteURL)>0) AND (Pos('/archive/',RemoteURL)>0) OR (Pos('sourceforge.net',RemoteURL)>0)) then
        begin
          //There should be a single directory !
          aName:='';
          FilesList:=FindAllDirectories(InstallDir,False);
          if FilesList.Count=1 then aName:=FilesList[0];
          FreeAndNil(FilesList);
          if Length(aName)>0 then
          begin
            infoln(infotext+'Moving files due to extra path. Please wait.',etInfo);
            FilesList:=FindAllFiles(aName, '', True);
            for i:=0 to (FilesList.Count-1) do
            begin
              aFile:=FilesList[i];
              aFile:=StringReplace(aFile,aName,aName+DirectorySeparator+'..',[]);
              aFile:=SafeExpandFileName(aFile);
              if NOT DirectoryExists(ExtractFileDir(aFile)) then CreateDir(ExtractFileDir(aFile));
              SysUtils.RenameFile(FilesList[i],aFile);
            end;
            DeleteDirectory(aName,False);
            FreeAndNil(FilesList);
          end;
        end;
      end else infoln(infotext+'Getting archive failed. Trying another source, if available.',etInfo)
    end;

    RemoteURL:=GetValueFromKey('ArchivePATH',PackageSettings);
    if (RemoteURL<>'') AND (NOT SourceOK) then
    begin
      infoln(infotext+'Going to download from archive path '+RemoteURL,etInfo);
      aFile := RemoteURL;
      case UpperCase(sysutils.ExtractFileExt(aFile)) of
         '.ZIP':
         begin
           with TNormalUnzipper.Create do
           begin
             try
               ResultCode:=Ord(NOT DoUnZip(aFile,IncludeTrailingPathDelimiter(InstallDir),[]));
             finally
               Free;
             end;
           end;
         end;
         '.7Z':
         begin
           ResultCode:=ExecuteCommand(F7zip+' x -o"'+IncludeTrailingPathDelimiter(InstallDir)+'" '+aFile,FVerbose);
           {$ifdef MSWINDOWS}
           // try winrar
           if ResultCode <> 0 then
           begin
             ResultCode:=ExecuteCommand('"C:\Program Files (x86)\WinRAR\WinRAR.exe" x '+aFile+' "'+IncludeTrailingPathDelimiter(InstallDir)+'"',FVerbose);
           end;
           {$endif}
           if ResultCode <> 0 then
           begin
             ResultCode:=ExecuteCommand('7z'+GetExeExt+' x -o"'+IncludeTrailingPathDelimiter(InstallDir)+'" '+aFile,FVerbose);
           end;
           if ResultCode <> 0 then
           begin
             ResultCode:=ExecuteCommand('7za'+GetExeExt+' x -o"'+IncludeTrailingPathDelimiter(InstallDir)+'" '+aFile,FVerbose);
           end;
         end;
         else {.tar and all others}
            ResultCode:=ExecuteCommand(FTar+' -xf '+aFile +' -C '+ExcludeTrailingPathDelimiter(InstallDir),FVerbose);
      end;

      if ResultCode <> 0 then
      begin
        result := False;
        infoln(infotext+'Unpack of '+aFile+' failed with resultcode: '+IntToStr(ResultCode),etwarning);
      end;

      if result then infoln(infotext+'Download from archive path ok.',etInfo);

      // todo patch package if correct patch is available in patch directory

    end;

  end
  else
    result:=false;
end;

function TUniversalInstaller.GetModuleRequirements(ModuleName: string;
  var RequirementList: TStringList): boolean;
begin
//todo: what are we supposed to do with Requirementslist?
  result:=InitModule;
  if not result then exit;
end;

// Runs all UnInstallExecute<n> commands inside a specified module
function TUniversalInstaller.UnInstallModule(ModuleName: string): boolean;
{$ifndef FPCONLY}
var
  idx,cnt,i:integer;
  sl:TStringList;
  Directive,xmlfile,key:string;
  LazarusConfig:TUpdateLazConfig;
{$endif}
begin
  result:=inherited;
  result:=InitModule;
  if not result then exit;
  {$ifndef FPCONLY}
  idx:=UniModuleList.IndexOf(ModuleName);
  if idx>=0 then
  begin
    sl:=TStringList(UniModuleList.Objects[idx]);
    WritelnLog(infotext+'UnInstalling module '+ModuleName);
    result:=RunCommands('UnInstallExecute',sl);

    // Process all AddPackage<n> directives in reverse.
    // As this changes config files, we keep it outside
    // the section where LazarusConfig is modified
    RemovePackages(sl);

    LazarusConfig:=TUpdateLazConfig.Create(FLazarusPrimaryConfigPath);
    try
      // Process specials
      Directive:=GetValueFromKey('RegisterExternalTool',sl);
      if Directive<>'' then
      begin
        xmlfile:=EnvironmentConfig;
        key:='EnvironmentOptions/ExternalTools/Count';
        cnt:=LazarusConfig.GetVariable(xmlfile,key,0);
        // check if tool is registered
        i:=cnt;
        while i>0 do
        begin
          if LazarusConfig.GetVariable(xmlfile,'EnvironmentOptions/ExternalTools/Tool'+IntToStr(i)+'/Title/Value')
            =ModuleName then
              break;
          i:=i-1;
        end;
        if i>=1 then // found
        begin
          LazarusConfig.SetVariable(xmlfile,key,cnt-1);
          key:='EnvironmentOptions/ExternalTools/Tool'+IntToStr(i)+'/';
          while i<cnt do
          begin
            LazarusConfig.MovePath(xmlfile,'EnvironmentOptions/ExternalTools/Tool'+IntToStr(i+1)+'/',
               'EnvironmentOptions/ExternalTools/Tool'+IntToStr(i)+'/');
            i:=i+1;
          end;
          LazarusConfig.DeletePath(xmlfile,'EnvironmentOptions/ExternalTools/Tool'+IntToStr(cnt)+'/');
        end;
      end;

      Directive:=GetValueFromKey('RegisterHelpViewer',sl);
      if Directive<>'' then
      begin
        xmlfile:=HelpConfig;
        key:='Viewers/TChmHelpViewer/CHMHelp/Exe';
        // Setting the variable to empty should be enough to disable the help viewer.
        LazarusConfig.SetVariable(xmlfile,key,'');
      end;
    finally
      LazarusConfig.Destroy;
    end;

    // If Lazarus was marked for rebuild, do so:
    if FLazarusNeedsRebuild then
    begin
      infoln(infotext+'Going to rebuild Lazarus because packages were removed.',etInfo);
      result:=RebuildLazarus;
    end;
  end
  else
    result:=false;
  {$endif}
end;

constructor TUniversalInstaller.Create;
begin
  inherited Create;
end;

destructor TUniversalInstaller.Destroy;
begin
  inherited Destroy;
end;


procedure ClearUniModuleList;
var
  i:integer;
begin
  for i:=0 to UniModuleList.Count -1 do
    TStringList(UniModuleList.Objects[i]).free;
end;

function GetKeyword(aDictionary,aAlias: string): string;
var
  ini:TMemIniFile;
  sl:TStringList;
  e:Exception;
  i:integer;
begin
  result:='';

  sl:=TStringList.Create;

  ini:=TMemIniFile.Create(CurrentConfigFile);
  {$IF DEFINED(FPC_FULLVERSION) AND (FPC_FULLVERSION > 30000)}
  ini.Options:=ini.Options-[ifoCaseSensitive];
  {$ELSE}
  ini.CaseSensitive:=false;
  {$ENDIF}

  try
    ini.ReadSectionValues('ALIAS'+aDictionary,sl);
    for i:=0 to sl.Count-1 do
    begin
      if sl.ValueFromIndex[i]=aAlias then
      begin
        result:=sl.Names[i];
        break;
      end;
    end;
  finally
    ini.Free;
    sl.free;
  end;
end;

function GetAlias(aDictionary,aKeyWord: string): string;
var
  ini:TMemIniFile;
  sl:TStringList;
  e:Exception;
begin
  sl:=TStringList.Create;

  ini:=TMemIniFile.Create(CurrentConfigFile);
  {$IF DEFINED(FPC_FULLVERSION) AND (FPC_FULLVERSION > 30000)}
  ini.Options:=ini.Options-[ifoCaseSensitive];
  {$ELSE}
  ini.CaseSensitive:=false;
  {$ENDIF}

  try
    ini.ReadSection('ALIAS'+aDictionary,sl);
    if Uppercase(aKeyWord)='LIST' then
      result:=sl.CommaText
    else
    begin
      result:=ini.ReadString('ALIAS'+aDictionary,aKeyWord,'');
      if result='' then
      begin
        if (result='') then
        begin
          infoln('InstallerUniversal (GetAlias): no source alias found: using fpcup default',etInfo);
          if aDictionary='fpcURL' then result:=FPCSVNURL+'/fpc/tags/release_'+StringReplace(DEFAULTFPCVERSION,'.','_',[rfReplaceAll]);
          {$ifndef FPCONLY}
          if aDictionary='lazURL' then result:=FPCSVNURL+'/lazarus/tags/lazarus_'+StringReplace(DEFAULTLAZARUSVERSION,'.','_',[rfReplaceAll]);
          {$endif}
        end;

        if (result='') then
        begin
          e:=Exception.CreateFmt('--%s=%s : Invalid keyword. Accepted keywords are: %s',[aDictionary,aKeyWord,sl.CommaText]);
          raise e;
        end;
      end;
    end;
  finally
    ini.Free;
    sl.free;
  end;
end;

function GetModuleList: string;
var
  ini:TMemIniFile;
  i,j,maxmodules:integer;
  val,name:string;

  function LoadModule(ModuleName:string):boolean;
  var
    name:string;
    sl:TStringList;
    li:integer;
  begin
    name:=ini.ReadString(ModuleName,INIKEYWORD_NAME,'');
    result:=name<>'';
    if result then
    begin
      //if StrToBoolDef(ini.ReadString(ModuleName,'Enabled',''),false) then
      // skip all default modules when only installing FPC ... tricky but ok for now.
      {$ifndef FPCONLY}
      if ini.ReadBool(ModuleName,'Enabled',False) then
         UniModuleEnabledList.Add(name);
      {$endif}
      // store the section as is and attach as object to UniModuleList
      // TstringList cleared in finalization
      sl:=TstringList.Create;
      ini.ReadSectionRaw(ModuleName,sl);
      for li:=sl.Count-1 downto 0 do
      begin
        if (TrimLeft(sl.Strings[li])[1]=';') OR (TrimLeft(sl.Strings[li])[1]='#') then sl.Delete(li);
      end;
      with sl do
      begin
        if IndexOfName(INIKEYWORD_CATEGORY)=-1 then Add(Concat(INIKEYWORD_CATEGORY, NameValueSeparator, 'miscellaneous'));
      end;
      UniModuleList.AddObject(name,TObject(sl));
    end;
  end;

  function CreateModuleSequence(aModuleName:string):string;
  var
    ModuleName,RequiredModules:string;
  begin
    result:='';
    ModuleName:=ini.ReadString(aModuleName,INIKEYWORD_NAME,'');
    if ModuleName<>'' then
      begin
      RequiredModules:=ini.ReadString(aModuleName,Trim(_REQUIRES),'');
      if RequiredModules<>'' then
      begin
        RequiredModules:=_REQUIRES + RequiredModules + _SEP;
        RequiredModules:=StringReplace(RequiredModules, ',', _SEP+_REQUIRES, [rfReplaceAll,rfIgnoreCase]);
      end;

      result:=
          _DECLARE+ ModuleName + _SEP +
          RequiredModules +
          _CLEANMODULE + ModuleName +_SEP +
          _GETMODULE + ModuleName +_SEP +
          _BUILDMODULE + ModuleName +_SEP +
          _CONFIGMODULE + ModuleName +_SEP +
          _END +
          _DECLARE + ModuleName + _CLEAN + _SEP +
          _CLEANMODULE + ModuleName +_SEP +
          _END +
          _DECLARE + ModuleName + _UNINSTALL + _SEP +
          _UNINSTALLMODULE + ModuleName +_SEP +
          _END;
      end;
  end;

begin
  result:='';
  ini:=TMemIniFile.Create(CurrentConfigFile);
  {$IF DEFINED(FPC_FULLVERSION) AND (FPC_FULLVERSION > 30000)}
  Ini.Options:=[ifoStripQuotes]; //let ini handle e.g. lazopt="-g -gl -O1" for us
  {$ELSE}
  ini.StripQuotes:=true; //let ini handle e.g. lazopt="-g -gl -O1" for us
  {$ENDIF}
  //ini.CaseSensitive:=false;
  //ini.StripQuotes:=true; //helps read description lines

  // parse inifile
  try
    maxmodules:=ini.ReadInteger('General','MaxSysModules',MAXSYSMODULES);
    ini.ReadSectionRaw('General',IniGeneralSection);
    for i:=0 to maxmodules do
      if LoadModule('FPCUPModule'+IntToStr(i)) then
        result:=result+CreateModuleSequence('FPCUPModule'+IntToStr(i));
    maxmodules:=ini.ReadInteger('General','MaxUserModules',MAXUSERMODULES);
    for i:=0 to maxmodules do
      if LoadModule('UserModule'+IntToStr(i))then
        result:=result+CreateModuleSequence('UserModule'+IntToStr(i));
    // the overrides in the [general] section
    for i:=0 to UniModuleList.Count-1 do
      begin
      name:=UniModuleList[i];
      val:=ini.ReadString('General',name,'');
      if val='1' then
        begin //enable if not yet done
        if UniModuleEnabledList.IndexOf(name)<0 then
          UniModuleEnabledList.Add(name);
        end
      else if val='0' then
        begin //disable if enabled
        j:=UniModuleEnabledList.IndexOf(name);
        if j>=0 then
          UniModuleEnabledList.Delete(j);
        end;
      end;

    for i:=UniModuleEnabledList.Count-1 downto 0 do
      begin
      name:=UniModuleEnabledList[i];
      if NOT CheckIncludeModule(name) then
          UniModuleEnabledList.Delete(i);
      end;

    // create the sequences for default modules
    result:=result+_DECLAREHIDDEN+_UNIVERSALDEFAULT+_SEP;
    for i:=0 to UniModuleEnabledList.Count-1 do
        result:=result+_DO+UniModuleEnabledList[i]+_SEP;
    result:=result+_END;
    result:=result+_DECLAREHIDDEN+_UNIVERSALDEFAULT+_CLEAN+_SEP;
    for i:=0 to UniModuleEnabledList.Count-1 do
      result:=result+_DO+UniModuleEnabledList[i]+_CLEAN+_SEP;
    result:=result+_END;
    result:=result+_DECLAREHIDDEN+_UNIVERSALDEFAULT+_UNINSTALL+_SEP;
    for i:=0 to UniModuleEnabledList.Count-1 do
      result:=result+_DO+UniModuleEnabledList[i]+_UNINSTALL+_SEP;
    result:=result+_END;

  finally
    ini.Free;
  end;
end;

function CheckIncludeModule(ModuleName: string):boolean;
var
  ini:TMemIniFile;
  j:integer;
  os,cpu:string;
  AddModule,NegativeList:boolean;
  sl:TStringList;
  e:Exception;

  function GetValueSimple(Key: string; sl: TStringList): string;
  var
    i:integer;
    s:string;
  begin
    Key:=UpperCase(Key);
    s:='';
    for i:=0 to sl.Count-1 do
      begin
      s:=sl[i];
      if (copy(UpperCase(s),1, length(Key))=Key) and ((s[length(Key)+1]='=') or (s[length(Key)+1]=' ')) then
        begin
        if pos('=',s)>0 then
          s:=trim(copy(s,pos('=',s)+1,length(s)));
        break;
        end;
      s:='';
      end;
    result:=s;
  end;

  function AND_OR_Values(V1,V2:boolean;setting:boolean):boolean;
  begin
    if setting
       then result:=(V1 AND V2)
       else result:=(V1 OR V2);
  end;

  function OccurrencesOfChar(const ContentString: string;
    const CharToCount: char): integer;
  var
    C: Char;
  begin
    result := 0;
    for C in ContentString do
      if C = CharToCount then
        Inc(result);
  end;

begin
  result:=False;

  ini:=TMemIniFile.Create(SafeGetApplicationPath+CONFIGFILENAME);
  {$IF DEFINED(FPC_FULLVERSION) AND (FPC_FULLVERSION > 30000)}
  ini.Options:=ini.Options-[ifoCaseSensitive]+[ifoStripQuotes];
  {$ELSE}
  ini.CaseSensitive:=false;
  ini.StripQuotes:=true; //helps read description lines
  {$ENDIF}

  try
    AddModule:=True;

    j:=UniModuleList.IndexOf(ModuleName);

    if j=-1 then AddModule:=false;

    if AddModule=true then
    begin

      sl:=TStringList(UniModuleList.Objects[j]);

      os:=GetValueSimple('OS_OK',sl);
      if (os<>'') AND (AddModule) then
      begin
         NegativeList:=(Pos('-',os)>0);

         // simmple check of list
         // number of negative signs [-] must be one more than the number of list separators [,]
         if NegativeList AND (OccurrencesOfChar(os,'-')<>(OccurrencesOfChar(os,',')+1)) then
         begin
           e:=Exception.Create('Invalid os list. Check os definition of module '+ModuleName+' inside '+CONFIGFILENAME+'.');
           raise e;
         end;

         // if we have a negative define list, then default to true until a negative setting is encountered
         // if we have a positive define list, then default to false until a positive setting is encountered
         AddModule:=NegativeList;

         {$ifdef windows}
         if (Pos('mswindows',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-mswindows',os)=0),NegativeList) else
         begin
           if (Pos('windows',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-windows',os)=0),NegativeList) else
           begin
             {$ifdef win32}
             if (Pos('win32',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-win32',os)=0),NegativeList);
             {$endif}
             {$ifdef win64}
             if (Pos('win64',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-win64',os)=0),NegativeList);
             {$endif}
           end;
         end;
         {$else}
         if (Pos('unix',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-unix',os)=0),NegativeList);
         {$endif}

         {$ifdef linux}
         if (Pos('linux',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-linux',os)=0),NegativeList);
         {$endif}

         {$ifdef Darwin}
         if (Pos('darwin',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-darwin',os)=0),NegativeList);
         {$endif}

         {$ifdef OpenBSD}
         if (Pos('openbsd',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-openbsd',os)=0),NegativeList);
         {$endif}

         {$ifdef FreeBSD}
         if (Pos('freebsd',os)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-freebsd',os)=0),NegativeList);
         {$endif}

      end;

      cpu:=GetValueSimple('CPU_OK',sl);
      if (cpu<>'') AND (AddModule) then
      begin
         NegativeList:=(Pos('-',cpu)>0);

         // simmple check of list
         // number of negative signs [-] must be one more than the number of list separators [,]
         if NegativeList AND (OccurrencesOfChar(cpu,'-')<>(OccurrencesOfChar(cpu,',')+1)) then
         begin
           e:=Exception.Create('Invalid cpu list. Check cpu definition of module '+ModuleName+' inside '+CONFIGFILENAME+'.');
           raise e;
         end;

         // if we have a negative define list, then default to true until an negative setting is encountered
         // if we have a positive define list, then default to false until a positive setting is encountered
         AddModule:=NegativeList;



         {$ifdef CPU32}
         if (Pos('cpu32',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-cpu32',cpu)=0),NegativeList);
         {$endif}
         {$ifdef CPUI386}
         if (Pos('i386',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-i386',cpu)=0),NegativeList);
         {$endif}
         {$ifdef CPU64}
         if (Pos('cpu64',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-cpu64',cpu)=0),NegativeList);
         {$endif}
         {$ifdef CPUX86_64 }
         if (Pos('x86_64',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-x86_64',cpu)=0),NegativeList);
         {$endif}
         {$ifdef CPUARM}
         if (Pos('cpuarm',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-cpuarm',cpu)=0),NegativeList) else
         begin
           if (Pos('arm',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-arm',cpu)=0),NegativeList);
         end;
         {$endif}
         {$ifdef CPUAARCH64}
         if (Pos('cpuaarch64',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-cpuaarch64',cpu)=0),NegativeList) else
         begin
           if (Pos('aarch64',cpu)>0) then AddModule:=AND_OR_Values(AddModule,(Pos('-aarch64',cpu)=0),NegativeList);
         end;
         {$endif}
      end;
    end;

    result:=AddModule;

  finally
    ini.Free;
  end;
end;



function GetModuleEnabledList(var ModuleList: TStringList): boolean;
var i:integer;
begin
  result:=false;
  for i:=0 to UniModuleEnabledList.Count -1 do
    ModuleList.Add(UniModuleEnabledList[i]);
  result:=true;
end;

function SetConfigFile(aConfigFile: string):boolean;
var
  ConfigFile: Text;
  CurrentConfigFileName:string;
begin
  result:=true;
  CurrentConfigFile:=aConfigFile;
  // Create fpcup.ini from resource if it doesn't exist yet
  if (CurrentConfigFile=SafeGetApplicationPath+CONFIGFILENAME) then
     result:=SaveInisFromResource(SafeGetApplicationPath+CONFIGFILENAME,'fpcup_ini');
end;

function GetCPUOSCombo(aCPU,aOS:string):TCPUOS;
var
  xCPU:TCPU;
  xOS:TOS;
  aLocalCPU,aLocalOS:string;
begin
  aLocalCPU:=aCPU;

  if length(aLocalCPU)>0 then
  begin
    if aLocalCPU='ppc' then aLocalCPU:='powerpc';
    if aLocalCPU='ppc64' then aLocalCPU:='powerpc64';

    xCPU:=TCPU(GetEnumValue(TypeInfo(TCPU),aLocalCPU));
    if Ord(xCPU) < 0 then
      raise Exception.CreateFmt('Invalid CPU name "%s" for GetCPUOSCombo.', [aLocalCPU]);
    result.CPU:=xCPU;
  end;

  aLocalOS:=aOS;
  if length(aLocalOS)>0 then
  begin
    if aLocalOS='win32' then aLocalOS:='windows';
    if aLocalOS='win64' then aLocalOS:='windows';
    if aLocalOS='i-sim' then aLocalOS:='iphonesim';
    if aLocalOS='i-simulator' then aLocalOS:='iphonesim';
    if aLocalOS='iphone-simulator' then aLocalOS:='iphonesim';
    if aLocalOS='iphonesimulator' then aLocalOS:='iphonesim';

    xOS:=TOS(GetEnumValue(TypeInfo(TOS),aLocalOS));
    if Ord(xOS) < 0 then
      raise Exception.CreateFmt('Invalid OS name "%s" for GetCPUOSCombo.', [aLocalOS]);
    result.OS:=xOS;
  end;

end;

function GetARMArch(aARMArch:string):TARMARCH;
begin
  if Length(aARMArch)=0 then
    result:=TARMARCH.default
  else
    result:=TARMARCH(GetEnumValue(TypeInfo(TARMARCH),aARMArch));
  if Ord(result) < 0 then
    raise Exception.CreateFmt('Invalid ARM Arch name "%s" for GetARMArch.', [aARMArch]);
end;

function GetARMArchFPCDefine(aARMArch:TARMARCH):string;
begin
  result:=ARMArchFPCStr[aARMArch];
end;


initialization
  IniGeneralSection:=TStringList.create;
  UniModuleList:=TStringList.create;
  UniModuleEnabledList:=TStringList.create;

finalization
  ClearUniModuleList;
  UniModuleList.free;
  UniModuleEnabledList.free;
  IniGeneralSection.Free;

end.

