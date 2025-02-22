        €€  €€                  ё      €€ €€               <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0">
 <assemblyIdentity version="1.0.0.0" processorArchitecture="*" name="CompanyName.ProductName.AppName" type="win32"/>
 <description>Your application description.</description>
 <dependency>
  <dependentAssembly>
   <assemblyIdentity type="win32" name="Microsoft.Windows.Common-Controls" version="6.0.0.0" processorArchitecture="*" publicKeyToken="6595b64144ccf1df" language="*"/>
  </dependentAssembly>
 </dependency>
 <trustInfo xmlns="urn:schemas-microsoft-com:asm.v3">
  <security>
   <requestedPrivileges>
    <requestedExecutionLevel level="asInvoker" uiAccess="false"/>
   </requestedPrivileges>
  </security>
 </trustInfo>
 <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1">
  <application>
   <!-- Windows Vista -->
   <supportedOS Id="{e2011457-1546-43c5-a5fe-008deee3d3f0}" />
   <!-- Windows 7 -->
   <supportedOS Id="{35138b9a-5d96-4fbd-8e2d-a2440225f93a}" />
   <!-- Windows 8 -->
   <supportedOS Id="{4a2f28e3-53b9-4441-ba9c-d69d4a4a6e38}" />
   <!-- Windows 8.1 -->
   <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}" />
   <!-- Windows 10 -->
   <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}" />
   </application>
  </compatibility>
 <asmv3:application xmlns:asmv3="urn:schemas-microsoft-com:asm.v3">
  <asmv3:windowsSettings xmlns="http://schemas.microsoft.com/SMI/2005/WindowsSettings">
   <dpiAware>True/PM</dpiAware>
  </asmv3:windowsSettings>
  <asmv3:windowsSettings xmlns="http://schemas.microsoft.com/SMI/2016/WindowsSettings">
   
   <longPathAware>false</longPathAware>
  </asmv3:windowsSettings>
 </asmv3:application>
</assembly>     0   €€ M A I N I C O N                       АА     (  Ы$ 0   €€
 F P C U P _ I N I                 ; fpcup.ini
; =========
; This file contains setup instructions for external modules,
; e.g. packages that can be downloaded from svn,hg or git repositories or are
; included with Lazarus/already present on disk.

; ==============================================================================
; Note: to specify your own options apart from modules, have a look at the
; settings.ini sample file.
; You can use fpcup --inifile=settings.ini to run with those options.
; ==============================================================================

; Available macros:
; $(FPCDIR) Base directory for FPC installation
; $(GETEXEEXT) Extension for executables (e.g. .exe on Windows, nothing on Linux/Unix)
; $(LAZARUSDIR) Base directory for Lazarus installation
; $(LAZARUSPRIMARYCONFIGPATH) Path where configuration for Lazarus is stored
; $(STRIPDIR) Directory where the strip executable is located
; ... and you can define your own, like below:

[fpcupinfo]
inifileversion=1.1.5.10

[ALIASfpcURL]
stable=https://svn.freepascal.org/svn/fpc/tags/release_3_0_4
trunk=https://svn.freepascal.org/svn/fpc/trunk
trunkgit=https://github.com/graemeg/freepascal.git
fixes3.2=https://svn.freepascal.org/svn/fpc/branches/fixes_3_2
embedded=https://github.com/LongDirtyAnimAlf/freepascal.git
fixes3.0=https://svn.freepascal.org/svn/fpc/branches/fixes_3_0
3.0.4=https://svn.freepascal.org/svn/fpc/tags/release_3_0_4
3.0.2=https://svn.freepascal.org/svn/fpc/tags/release_3_0_2
3.0.0=https://svn.freepascal.org/svn/fpc/tags/release_3_0_0
3.3.1=https://svn.freepascal.org/svn/fpc/trunk
3.3=https://svn.freepascal.org/svn/fpc/trunk
fixes=https://svn.freepascal.org/svn/fpc/branches/fixes_3_0
newpascal=https://github.com/newpascal/freepascal/branches/release
newpascalgit=https://github.com/newpascal/freepascal.git
fixes2.6=https://svn.freepascal.org/svn/fpc/branches/fixes_2_6
2.6.4=https://svn.freepascal.org/svn/fpc/tags/release_2_6_4
2.6.2=https://svn.freepascal.org/svn/fpc/tags/release_2_6_2
2.6.0=https://svn.freepascal.org/svn/fpc/tags/release_2_6_0
fixes2.4=https://svn.freepascal.org/svn/fpc/branches/fixes_2_4
2.4.4=https://svn.freepascal.org/svn/fpc/tags/release_2_4_4
2.4.2=https://svn.freepascal.org/svn/fpc/tags/release_2_4_2
2.4.0=https://svn.freepascal.org/svn/fpc/tags/release_2_4_0
2.2.4=https://svn.freepascal.org/svn/fpc/tags/release_2_2_4
2.2.2=https://svn.freepascal.org/svn/fpc/tags/release_2_2_2
fixes2.2=https://svn.freepascal.org/svn/fpc/branches/fixes_2_2
2.2.0=https://svn.freepascal.org/svn/fpc/tags/release_2_2_0
2.1.4=https://svn.freepascal.org/svn/fpc/tags/release_2_1_4
2.1.2=https://svn.freepascal.org/svn/fpc/tags/release_2_1_2
2.0.4=https://svn.freepascal.org/svn/fpc/tags/release_2_0_4
2.0.2=https://svn.freepascal.org/svn/fpc/tags/release_2_0_2
fixes2.0=https://svn.freepascal.org/svn/fpc/branches/fixes_2_0
2.0.0=https://svn.freepascal.org/svn/fpc/tags/release_2_0_0
; specials
llvm=https://svn.freepascal.org/svn/fpc/branches/llvm
ios=https://svn.freepascal.org/svn/fpc/branches/fixes_3_0_ios
embedded=https://svn.freepascal.org/svn/fpc/branches/laksen
mips=https://svn.freepascal.org/svn/fpc/branches/mips_embedded

[ALIASlazURL]
stable=https://svn.freepascal.org/svn/lazarus/tags/lazarus_2_0_4
trunk=https://svn.freepascal.org/svn/lazarus/trunk
trunkgit=https://github.com/graemeg/lazarus.git
embedded=https://github.com/LongDirtyAnimAlf/lazarus.git
2.1.0=https://svn.freepascal.org/svn/lazarus/trunk
fixes2.0=https://svn.freepascal.org/svn/lazarus/branches/fixes_2_0
2.0.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_2_0_4
2.0.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_2_0_2
2.0.0=https://svn.freepascal.org/svn/lazarus/tags/lazarus_2_0_0
1.8.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_8_4
fixes1.8=https://svn.freepascal.org/svn/lazarus/branches/fixes_1_8
1.8.5=https://svn.freepascal.org/svn/lazarus/branches/fixes_1_8
1.8.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_8_4
1.8.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_8_2
1.8.0=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_8_0
fixes=https://svn.freepascal.org/svn/lazarus/branches/fixes_1_8
fixes1.6=https://svn.freepascal.org/svn/lazarus/branches/fixes_1_6
newpascal=https://github.com/newpascal/lazarus/branches/release
newpascalgit=https://github.com/newpascal/lazarus.git
1.6.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_6_4
1.6.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_6_2
1.6.0=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_6
1.6=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_6
; Sparta
sparta=https://svn.freepascal.org/svn/lazarus/branches/free-sparta
freesparta=https://svn.freepascal.org/svn/lazarus/branches/free-sparta
; Older version for compatiblity with previous scripts
fixes1.4=https://svn.freepascal.org/svn/lazarus/branches/fixes_1_4
1.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_4
1.4.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_4_4
1.4.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_4_2
1.2.6=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_2_6
1.2.6=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_2_6
1.2.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_2_4
1.2.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_2_2
1.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_2
1.0.14=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_14
1.0.12=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_12
1.0.10=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_10
1.0.8=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_8
1.0.6=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_6
1.0.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_4
1.0.2=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0_2
1.0=https://svn.freepascal.org/svn/lazarus/tags/lazarus_1_0
0.9.30=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_30
0.9.20=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_20
0.9.16=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_16
0.9.10=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_10
0.9.8=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_8
0.9.6=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_6
0.9.4=https://svn.freepascal.org/svn/lazarus/tags/lazarus_0_9_4

[FPCUPModule0]
; These IDE packages can be handy when developing
; they were selected by the fpcup maintainers and mimic a build of bigide.
; Please feel free to add your own.
Name=suggestedpackages
Description="Selection of various IDE packages that can be handy when developing"
Enabled=1
; Modules can be installed depending on OS and CPU
; windows only
; OS_OK="windows"
; all, but windows 64 bit
; OS_OK="-win64"
; only linux and darwin
; OS_OK="linux,darwin"
; all, but unix
; OS_OK="-unix"
; examples for CPU
; CPU_OK="i386,x86_64"
; CPU_OK="-arm"

; Note: the next lines show you can use either Windows \ or Unix / in a path
; .... but not both in the same line

; To mark a package for compilation and installation in the IDE, use 
; AddPackage<n>.
; You will need to recompile the IDE, e.g. using the USERIDE sequence in fpcup
; (which is done for you in the default setup)
; If you just want to register a runtime-only package, use InstallExecute
AddPackage1=$(lazarusdir)/components/tdbf/dbflaz.lpk
AddPackage2=$(lazarusdir)/components/fpcunit/ide/fpcunitide.lpk
AddPackage3=$(lazarusdir)/components/daemon/lazdaemon.lpk
AddPackage4=$(lazarusdir)/components/leakview/leakview.lpk
AddPackage5=$(lazarusdir)/components/tachart/tachartlazaruspkg.lpk
AddPackage6=$(lazarusdir)/components/codetools/ide/cody.lpk
AddPackage7=$(lazarusdir)/components/sdf/sdflaz.lpk
AddPackage8=$(lazarusdir)/components/projecttemplates/projtemplates.lpk
AddPackage9=$(lazarusdir)/components/sqldb/sqldblaz.lpk
AddPackage10=$(lazarusdir)/components/memds/memdslaz.lpk
; AddPackage11=$(lazarusdir)/components/todolist/todolistlaz.lpk
AddPackage12=$(lazarusdir)/components/jcf2/IdePlugin/lazarus/jcfidelazarus.lpk
AddPackage13=$(lazarusdir)/components/chmhelp/packages/idehelp/chmhelppkg.lpk
AddPackage14=$(lazarusdir)/components/instantfpc/instantfpclaz.lpk
AddPackage15=$(lazarusdir)/components/externhelp/externhelp.lpk
AddPackage16=$(lazarusdir)/components/datetimectrls/datetimectrls.lpk
AddPackage17=$(lazarusdir)/components/datetimectrls/design/datetimectrlsdsgn.lpk
AddPackage18=$(lazarusdir)/components/lazcontrols/design/lazcontroldsgn.lpk
AddPackage19=$(lazarusdir)/components/projectgroups/lazprojectgroups.lpk

[FPCUPModule1]
Name=suggestedpackagesadd
Description="Additional selection of various IDE packages that can be handy when developing"
Enabled=0
AddPackage1=$(lazarusdir)/components/dbexport/lazdbexport.lpk
AddPackage2=$(lazarusdir)/components/lazreport/source/lazreport.lpk
AddPackage3=$(lazarusdir)/components/tachart/tachartprint.lpk
AddPackage4=$(lazarusdir)/components/synedit/design/syneditdsgn.lpk
AddPackage5=$(lazarusdir)/components/rtticontrols/runtimetypeinfocontrols.lpk
AddPackage6=$(lazarusdir)/components/printers/printer4lazarus.lpk
AddPackage7=$(lazarusdir)/components/printers/design/printers4lazide.lpk

[FPCUPModule2]
Name=anchordocking
Description="Anchordocking for Lazarus ... looks great."
Enabled=0
AddPackage1=$(lazarusdir)/components/anchordocking/design/anchordockingdsgn.lpk
AddPackage2=$(lazarusdir)/components/sparta/dockedformeditor/sparta_dockedformeditor.lpk

[FPCUPModule3]
; A CHM help viewer is required in order to view CHM help from within Lazarus
; lhelp.exe, we've implemented a workaround to keep lhelp, so enabling it is useful.
Name=lhelp
Description="CHM help viewer for Lazarus, and associated package."
Enabled=0
; Enable only for intel CPU !
CPU_OK="i386,x86_64"
; Here we define a macro of our own:
Workingdir=$(lazarusdir)/components/chmhelp/lhelp
; Build the lhelp program:
; (will also require [done automagically by lazbuild] lhelpcontrolpkg, SimpleIPC, TurboPowerIPro)
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Workingdir)/lhelp.lpr
; Current trunk Lazarus starts up lhelp by itself os debugging it under Lazarus is not easy.
; Therefore it makes sense to strip debug symbols (if any) in order to get the size down
; Note that we use the macro GETEXEEXT so it works on both Linux/Unix and Windows.
InstallExecute2=$(stripdir)/strip $(Workingdir)/lhelp$(getexeext)
; ... we could add the chm help package to the IDE:
; We specify the full path to make sure it is in the known list of packages, even if we did not build bigide before:
;AddPackage1=$(lazarusdir)\components\chmhelp\packages\idehelp\chmhelppkg.lpk
;but that has already been done in FPCUPModule1...
; Use the RegisterHelpViewer to register the executable as a Lazarus help viewer.
RegisterHelpViewer=$(Workingdir)/$(name)

[FPCUPModule4]
Name=lazdatadesktop
Description="A database helper tool for Lazarus. Will be registered in External Tools"
Enabled=0
; does not work anymore with trunk on Darwin and OpenBSD: disable for now
OS_OK="-darwin,-openbsd"
Workingdir=$(lazarusdir)/tools/lazdatadesktop
; Compile the package but do not install it into the IDE. Compiling alone is
; enough to add runtime-only packages to the list of known packages so you 
; can use them in your projects. See AddPackage for installing design-time 
; packages
InstallExecute1=$(lazarusdir)/lazbuild  --primary-config-path=$(LazarusPrimaryConfigPath) $(lazarusdir)/tools/lazdatadesktop/lazdatadesktop.lpr
RegisterExternalTool=$(lazarusdir)/tools/lazdatadesktop/lazdatadesktop
;Additional RegisterExternalTool* commands:
;RegisterExternalToolCmdLineParams=string
;RegisterExternalToolWorkingDirectory=string
;RegisterExternalToolScanOutputForFPCMessages=0|1
;RegisterExternalToolScanOutputForMakeMessages=0|1
;RegisterExternalToolHideMainForm=0|1

[FPCUPModule5]
; Can be used as an external tool in Lazarus
Name=doceditor
Description"Lazarus DocEditor; used to edit fpdoc (FPC and Lazarus) documentation files. Will be registered as an external tool"
Enabled=0
Workingdir=$(lazarusdir)/doceditor
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(lazarusdir)/doceditor/lazde.lpr
RegisterExternalTool=$(lazarusdir)/doceditor/lazde

[FPCUPModule6]
Name=opm
Description="The great Online Package Manager for Lazarus."
Enabled=0
AddPackage=$(lazarusdir)/components/onlinepackagemanager/onlinepackagemanager.lpk

[FPCUPModule7]
; fpspreadsheet (without the rest of the Lazarus CCR)
; http://wiki.lazarus.freepascal.org/FPSpreadsheet
Name=fpspreadsheet
Description="The fpSpreadsheet library offers a convenient way to generate and read spreadsheet documents"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/fpspreadsheet
; Compile the non-visual package as that is all that is needed...
; InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/laz_fpspreadsheet.lpk
; Register the run time package, don't install
AddPackageLink1=$(Installdir)/laz_fpspreadsheet.lpk
AddPackageLink2=$(Installdir)/laz_fpspreadsheet_visual.lpk
; ... and mark the visual package for installation into Lazarus:
AddPackage=$(Installdir)/laz_fpspreadsheet_visual_dsgn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule8]
Name=lazopenglcontext
Description="OpenGL context for Lazarus."
Enabled=0
AddPackage=$(lazarusdir)/components/opengl/lazopenglcontext.lpk

[FPCUPModule9]
Name=fpvectorialpkg
Description="Library that can be used to create formatted text files in a variety of file formats."
Requires=lazopenglcontext
Enabled=0
AddPackage=$(lazarusdir)/components/fpvectorial/fpvectorialpkg.lpk

[FPCUPModule10]
Name=lazgoogleapis
Description="Library that can be used to access Google APIs like agenda."
Enabled=0
AddPackage=$(lazarusdir)/components/googleapis/lazgoogleapis.lpk

[FPCUPModule11]
Name=lclextensions
Description="LCL Extensions provides additional functions to be used together with LCL (used by VTV)."
Enabled=0
AddPackage=$(lazarusdir)/components/lclextensions/lclextensions_package.lpk

[FPCUPModule12]
Name=virtualtreeview
Description="VirtualTreeView as included by Lazarus."
Enabled=0
; for older versions of Lazarus (hack)
AddPackage1=$(lazarusdir)/components/virtualtreeview/virtualtreeview_package.lpk
; for newest versions of Lazarus (hack)
AddPackage2=$(lazarusdir)/components/virtualtreeview/laz.virtualtreeview_package.lpk

[FPCUPModule13]
Name=virtualtreeviewonline
Description="VirtualTreeView as available on GitHub."
Installdir=$(basedir)/ccr/$(name)
Requires=lclextensions
Enabled=0
GITURL=https://github.com/blikblum/VirtualTreeView-Lazarus
Branch=lazarus_v5
; Mark the visual package for installation into Lazarus:
AddPackage=$(Installdir)/Source/virtualtreeview_package.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule14]
Name=industrial
Description="Industrial-themed (IPV/PCV) components and gauges (e.g. LEDs)."
Installdir=$(basedir)/ccr/$(name)
; Requires=IDEIntf
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/industrialstuff
AddPackage=$(Installdir)/industrial.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule15]
Name=mbColorLib
Description="mbColorLib contains about 30 components covering the RGB, CMYK, HSL, HSV, and CIELab color models."
Installdir=$(basedir)/ccr/$(name)
; Requires=IDEIntf
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/mbColorLib
AddPackage=$(Installdir)/mbcolorliblaz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule16]
Name=chemtext
Description="ChemText is a TCustomLabel descendant which can display chemical formulas and reaction equations with automatically placed subscripts and superscripts."
Installdir=$(basedir)/ccr/$(name)
; Requires=IDEIntf
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/chemtext
AddPackage=$(Installdir)/laz_chemtext.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule17]
Name=pascalscript
Description="Pascal scripting tools."
Enabled=0
AddPackage=$(lazarusdir)/components/PascalScript/Source/pascalscript.lpk

[FPCUPModule18]
Name=editormacroscript
Requires=pascalscript
Description="IDE-Extension: Adds PascalScript to editor-macros."
Enabled=0
AddPackage=$(lazarusdir)/components/macroscript/editormacroscript.lpk

[FPCUPModule19]
Name=LazarusDockedDesktops
Description="Desktop configuration files for Lazarus IDE that try to resemble RAD Studio."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/FlKo/LazarusDockedDesktops
ArchiveURL=https://github.com/FlKo/LazarusDockedDesktops/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule20]
Name=luipack
Description="Extensive library and control set for Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/blikblum/luipack
ArchiveURL=https://github.com/blikblum/luipack/archive/master.zip
; AddPackage=$(Installdir)/lclextensions/lclextensions_package.lpk
; sqlite3 is needed for luicomponents !!
; AddPackage2=$(Installdir)/luicomponents/luicomponents.lpk
; AddPackage3=$(Installdir)/luicontrols/luicontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule21]
Name=dcpcrypt
Description="DCPCrypt is a collection of cryptographic components for FPC and Lazarus"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=git://lazarus-ccr.git.sourceforge.net/gitroot/lazarus-ccr/dcpcrypt
; Compile the run time package, don't install
; InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/dcpcrypt.lpk
; Register the run time package, don't install
AddPackageLink=$(Installdir)/dcpcrypt.lpk
; Design time:
AddPackage=$(Installdir)/dcpcrypt_laz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule22]
; Handy if you want to edit it, and if you want to show pop up
; hints in Lazarus
Name=fpcdocs
Description="fpcdocs contains the source code for FPC documentation. Handy for tooltips/hints in the IDE"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
; RegisterLazDocPath registers the path with xml documentation file
; in Lazarus so you get updated hints when hovering over a keyword
RegisterLazDocPath=$(basedir)/ccr/$(name)
SVNURL=https://svn.freepascal.org/svn/fpcdocs/trunk
UnInstall1=rm -Rf $(Installdir)

[FPCUPModule23]
; Note: could also be generated by
; make tools
; (which requires LCL+nogui widgetset, e.g. provided by lazbuild)
Name=lazres
Description="Lazarus resource file creator"
Enabled=0
Workingdir=$(lazarusdir)/tools
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(lazarusdir)/tools/lazres.lpi

[FPCUPModule24]
Name=lazrestbridge
Description="Lazarus support for the SQLDB REST Bridge."
Enabled=0
AddPackage=$(lazarusdir)/components/fpweb/lazsqldbrest.lpk

[FPCUPModule25]
; Create Lazarus Windows installer
Name=installerlazwin
Description="This module creates a Lazarus Windows installer"
; For the installer, we place some SVN directories below the installdir;
; the user need not worry about these.
; Note: the output setup executable will not be put there.
Installdir=$(basedir)/$(name)
Enabled=0
; Creates the installer. Note target platform (for now, only Windows)
CreateInstaller1=Windows
Uninstall=rm -Rf $(Installdir)

[FPCUPModule26]
Name=lazpackager
Description="Packaging addin for creating Debian packages from your Lazarus project. Requires git to be installed."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/prof7bit/LazPackager
ArchiveURL=https://github.com/prof7bit/LazPackager/archive/master.zip
AddPackage=$(Installdir)/lazpackager.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule27]
Name=aggpaslcl
Description="AggPas canvas for LCL."
Enabled=0
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(lazarusdir)/components/aggpas/lazarus/aggpaslcl.lpk

[FPCUPModule28]
Name=fpreport
; Needs freetype !!!! Will inhibit start of Lazarus if freetype cannot be found.
Description="Lazarus frontend for fpreport."
Enabled=0
AddPackage=$(lazarusdir)/components/fpreport/lclfpreport.lpk

[FPCUPModule29]
Name=kcontrols
Description="KControls component suite v1.7 for [Delphi and] Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; HGURL=https://bitbucket.org/tkweb/kcontrols
HGURL=https://bitbucket.org/tomkrysl/kcontrols
ArchiveURL=http://www.tkweb.eu/zipfiles/481f1a694e9ae/7_kcontrols_1.7.zip
AddPackage1=$(Installdir)/packages/kcontrols/kcontrolsbase.lpk
AddPackage2=$(Installdir)/packages/kcontrols/kcontrolslaz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule30]
; http://www.ararat.cz/synapse/doku.php
Name=synapse
Description="Synapse networking library."
Enabled=0
Installdir=$(basedir)/ccr/$(name)
; svn: access does not seem to work SVNURL=svn://svn.code.sf.net/p/synalist/code/trunk
SVNURL=http://svn.code.sf.net/p/synalist/code/trunk
;InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/laz_synapse.lpk
AddPackage=$(Installdir)/laz_synapse.lpk
UnInstall1=rm -Rf $(Installdir)

[FPCUPModule31]
Name=indy
Description="Indy 10 networking library for FPC / Lazarus"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; from GIT
GITURL=https://github.com/IndySockets/Indy
; from SVN
SVNURL=https://svn.atozed.com:444/svn/Indy10/trunk/
UserName=Indy-Public-RO
Password=
; This ArchiveURL changes very often with version changes
; Please check this URL in case of errors !!
ArchiveURL=https://indy.fulgan.com/ZIP/Indy10_5514.zip
; InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Lib/indylaz.lpk
; compile twice ?? See http://forum.lazarus.freepascal.org/index.php/topic,26946.msg166269.html#msg166269
; InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Lib/indylaz.lpk
; compile thrice ?? See http://forum.lazarus.freepascal.org/index.php/topic,26946.msg166269.html#msg166269
; InstallExecute3=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Lib/indylaz.lpk
AddPackage=$(Installdir)/Lib/indylaz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule32]
; lnet FPC/Lazarus package
; see http://wiki.lazarus.freepascal.org/lNet
; Removed from default install list as it is not available on OSX
Name=lnet
Description="Lightweight Networking Library."
; it is needed by lazpaint
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; we only want the trunk branch as otherwise we'd get all old releases
SVNURL=http://svn.freepascal.org/svn/fpcprojects/lnet/trunk
; compile the non-visual package
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/lazaruspackage/lnetbase.lpk
; and mark the visual package for installation:
AddPackage=$(Installdir)\lazaruspackage\lnetvisual.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule33]
Name=brookframework
Description="Brook web application server framework. Requires git to be installed"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/silvioprog/brookframework
ArchiveURL=https://github.com/silvioprog/brookframework/archive/master.zip
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/packages/brookrt.lpk
AddPackage1=$(Installdir)/packages/brookdt.lpk
AddPackage2=$(Installdir)/packages/brookex.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule34]
Name=wst
Description="Web Service Toolkit."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/wst/trunk/
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/ide/lazarus/wst_core.lpk
AddPackage1=$(Installdir)/ide/lazarus/wst_design.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule35]
Name=internettools
Description="Pascal library providing a standard compatible XPath 2/XQuery 1 interpreter."
Installdir=$(basedir)/ccr/$(name)
; On Linux:
; Requires=synapse
; On all:
; Requires=flre
Enabled=0
GITURL=https://github.com/benibela/internettools
AddPackage=$(Installdir)/internettools.lpk
; ArchiveURL=https://github.com/benibela/internettools/archive/master.zip
; AddPackage=$(Installdir)/internettools.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule36]
Name=fpc-xon
Description="XON is An Cross Platform Object Notation writen in pure object pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/blestan/fpc-xon
ArchiveURL=https://github.com/blestan/fpc-xon/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule37]
Name=indy9
Description="Indy9 networking library for FPC / Lazarus"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
ArchiveURL=http://indy.fulgan.com/ZIP/indy9.zip
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Lib/indylaz.lpk
; compile twice ?? See http://forum.lazarus.freepascal.org/index.php/topic,26946.msg166269.html#msg166269
InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Lib/indylaz.lpk
; compile thrice ?? See http://forum.lazarus.freepascal.org/index.php/topic,26946.msg166269.html#msg166269
; InstallExecute3=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Lib/indylaz.lpk
; AddPackage1=$(Installdir)/Lib/indylaz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule38]
Name=rx
Description="Delphi VCL Extensions (RX)."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/rx/trunk
AddPackage1=$(Installdir)/rx.lpk
AddPackage2=$(Installdir)/rxtools.lpk
AddPackage3=$(Installdir)/rxnew.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule39]
Name=mtprocs
Description="MTProcs helps to implement parallel algorithms."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/multithreadprocs/trunk
; SVNURL=https://lazarus-ccr.svn.sourceforge.net/svnroot/lazarus-ccr/components/multithreadprocs
AddPackage=$(lazarusdir)/components/multithreadprocs/multithreadprocslaz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule40]
Name=pascalsane
Description="Bindings to the SANE *nix scanner library"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
SVNURL=http://ocrivist.googlecode.com/svn/PascalSane/
UnInstall1=rm -Rf $(Installdir)

[FPCUPModule41]
Name=leptonica
Description="Leptonica (layout recognition) library bindings"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
SVNURL=http://ocrivist.googlecode.com/svn/leptonica/
UnInstall1=rm -Rf $(Installdir)

[FPCUPModule42]
; new version 3 is rewritten... see bug:
; https://code.google.com/p/tesseract-ocr/issues/detail?id=362
Name=tesseract
Description="Tesseract OCR library interface (probably for old 2.04 version)"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
SVNURL=http://ocrivist.googlecode.com/svn/tessintf/
UnInstall1=rm -Rf $(Installdir)

[FPCUPModule43]
; Note: has not been tested; perhaps won't work with Tesseract 3
; might also be easier to run TProcess to call CLI executables
Name=OCRivist
Description="OCRivist program for OCR. Requires (and will install) leptonica, tesseract, pascalsane"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
; Demo/main program:
SVNURL=http://ocrivist.googlecode.com/svn/trunk/
Requires=pascalsane,leptonica,tesseract
UnInstall1=rm -Rf $(Installdir)

[FPCUPModule44]
Name=todolistlaz
Description="A todo list window for the Lazarus IDE."
Enabled=0
AddPackage=$(lazarusdir)/components/todolist/todolistlaz.lpk

[FPCUPModule50]
Name=bgrabitmap
Description="BGRABitmap library"
;lazopenglcontext required by bglcontrols
Requires=lazopenglcontext
Enabled=0
Installdir=$(basedir)/ccr/$(name)
GITURL=https://github.com/bgrabitmap/bgrabitmap
ArchiveURL=https://github.com/bgrabitmap/bgrabitmap/archive/master.zip
; InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/bgrabitmap/bgrabitmappack.lpk
AddPackageLink1=$(Installdir)/bgrabitmap/bgrabitmappack.lpk
AddPackageLink2=$(Installdir)/bgrabitmap/bglcontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule51]
; lazpaint complete
Name=lazpaint
Description="LazPaint painting program with bgrabitmap and layer support etc ..."
Requires=bgrabitmap,bgracontrols
Enabled=0
Installdir=$(basedir)/ccr/$(name)
GITURL=https://github.com/bgrabitmap/lazpaint
; SVNURL=svn://svn.code.sf.net/p/lazpaint/code/
ArchiveURL=https://github.com/bgrabitmap/lazpaint/archive/master.zip
AddPackageLink1=$(Installdir)/lazpaintcontrols/lazpaintcontrols.lpk
AddPackageLink2=$(Installdir)/lazpaint/lazpaintembeddedpack.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule52]
; http://wiki.lazarus.freepascal.org/BGRAControls#Overview
Name=bgracontrols
Description="Custom drawn controls. Requires bgrabitmap."
Requires=bgrabitmap
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/bgrabitmap/bgracontrols
; SVNURL=svn://svn.code.sf.net/p/bgra-controls/code/
ArchiveURL=https://github.com/bgrabitmap/bgracontrols/archive/master.zip
AddPackage=$(Installdir)/bgracontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule53]
Name=bgracontrolsfx
Description="OpenGL Controls for Lazarus. Requires bgrabitmap,lazopenglcontext."
Requires=bgrabitmap
; Requires=bgrabitmap,lazopenglcontext // lazopenglcontext requirement alrady fullfilled by bgrabitmap
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/bgrabitmap/bgracontrolsfx
ArchiveURL=https://github.com/bgrabitmap/bgracontrolsfx/archive/master.zip
AddPackage=$(Installdir)/bgracontrolsfx.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule54]
Name=bgragames
Description="Game examples. Requires bgrabitmap."
Requires=bgrabitmap
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/bgrabitmap/bgragames
; SVNURL=svn://svn.code.sf.net/p/bgragames/code/
ArchiveURL=https://github.com/bgrabitmap/bgragames/archive/master.zip
AddPackage=$(Installdir)/bgragames.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule55]
Name=uecontrols
Description="Instrumentation and others useful controls for Lazarus IDE. Requires bgrabitmap."
Requires=bgrabitmap
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/bgrabitmap/uecontrols
ArchiveURL=https://github.com/bgrabitmap/uecontrols/archive/master.zip
AddPackage=$(Installdir)/uecontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule56]
; Vampyre imaging library
Name=vampyre
Description="Vampyre imaging library."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
HGURL=http://hg.code.sf.net/p/imaginglib/code
; ArchiveURL=https://bitbucket.org/galfar/lib-imaging/get/bec1f839ba0d.zip
ArchiveURL=https://sourceforge.net/projects/imaginglib/files/latest/download
; ArchiveURL=https://prdownloads.sourceforge.net/imaginglib/imaginglib0264.zip
; compile vampyre package
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Extras/IdePackages/Lazarus/vampyreimagingpackage.lpk
; InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/galfar-lib-imaging-bec1f839ba0d/Extras/IdePackages/vampyreimagingpackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule57]
Name=ljgridutils
Description="JSON saving/loading from grid. Requires git to be installed."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/silvioprog/ljgridutils
ArchiveURL=https://github.com/silvioprog/ljgridutils/archive/master.zip
AddPackage=$(Installdir)/pkg/ljgridutilspkg.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule58]
Name=mupdf
Description="Experimental bindings for the mupdf pdf visualization library."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/blestan/lazmupdf
ArchiveURL=https://github.com/blestan/lazmupdf/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule59]
; Simple Graph component being ported from Delphi
Name=simplegraph
Description="Simple Graph component being ported from Delphi"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=git://git.code.sf.net/p/evssimplegraph/code
AddPackage1=$(Installdir)/Package/ugraphrtm.lpk
AddPackage2=$(Installdir)/Package//ugraphdsgn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule60]
; nxPascal 3D game engine for Lazarus and Delphi; uses OpenGL and OpenAL/BASS
Name=nxpascal
Description="nxPascal 3D game engine for Lazarus and Delphi"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=http://nxpascal.googlecode.com/svn/trunk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule61]
Name=glscene
Description="GLScene multimedia programming library"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/glscene/code/branches/GLSceneLCL
; Compile the run time package, don't install
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Packages/GLScene_RunTime.lpk
; Design time:
AddPackage1=$(Installdir)/Packages/GLScene_DesignTime.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule62]
Name=pxl
Description="Pascal eXtended Library is a cross-platform framework for developing 2D/3D video games, interactive and scientific applications."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; Use svn repo as source: this repo has the latest updates !!
SVNURL=svn://svn.code.sf.net/p/asphyre/code/trunk
; GITURL=https://github.com/zyhh/pxl
; ArchiveURL=https://github.com/zyhh/pxl/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule63]
Name=ECControls
Description="Visual controls. Based on Themes, therefore their look is very native."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; GITURL=https://github.com/cutec-chris/Eye-Candy_Controls
; from SVN
; ArchiveURL=http://sourceforge.net/projects/eccontrols/files/ecc_15-04-26/ECC.zip/download
; ArchiveURL=http://sourceforge.net/projects/eccontrols/files/ecc_15-05-12_0-9-2-8/ECC.zip/download
; ArchiveURL=http://sourceforge.net/projects/eccontrols/files/ecc_0-9-6-10_16-06-15/ECC.zip/download
; ArchiveURL=http://downloads.sourceforge.net/project/eccontrols/ecc_16-06-15_0-9-6-10/ecc_0-9-6-10_16-06-15.zip
; ArchiveURL=https://sourceforge.net/projects/eccontrols/files/ecc_18-03-09_0-9-30/ecc_0-9-30_18-03-09.zip/download
ArchiveURL=https://sourceforge.net/projects/eccontrols/files/latest/download
; Mark the visual package for installation into Lazarus:
; AddPackage=$(Installdir)/EC_Controls/eccontrols.lpk
; tricky ... prevent rewrite (due to archiveURL trickery) and get all installed !
AddPackage=$(basedir)/ccr/$(name)/EC_Controls/eccontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule64]
Name=treelistview
Description="A Pascal treelistview component, showing a treeview together with the columns of a listview."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/benibela/treelistview
ArchiveURL=https://github.com/benibela/treelistview/archive/master.zip
AddPackage1=$(Installdir)/searchbarpackage.lpk
AddPackage2=$(Installdir)/treelistviewpackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule65]
Name=gestinux
Description="Accounting and billing software."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=https://svn.code.sf.net/p/gestinux/code/trunk
; SVNURL=svn://svn.code.sf.net/p/gestinux/code/trunk
; ArchiveURL=https://sourceforge.net/code-snapshots/svn/g/ge/gestinux/code/gestinux-code-1683-trunk.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule66]
Name=htmlviewer
Description="The well-known Delphi/Lazarus HtmlViewer/FrameViewer."
Installdir=$(basedir)/ccr/$(name)
Requires=besen
Enabled=0
GITURL=https://github.com/BerndGabriel/HtmlViewer
Branch=master
ArchiveURL=https://github.com/BerndGabriel/HtmlViewer/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule70]
; See
; http://zeoslib.sourceforge.net/portal.php
; http://wiki.lazarus.freepascal.org/ZeosDBO
Name=zeos
Description="Zeos database components (testing branch => seems the most reliable)"
Enabled=0
Installdir=$(basedir)/ccr/$(name)
; Page with list of svn repos:
; http://zeoslib.sourceforge.net/viewtopic.php?f=1&t=3654&sid=9c21e65a2eda5eb9ad17d4be3ce55932
; SVNURL=svn://svn.code.sf.net/p/zeoslib/code-0/branches/testing-7.2
; SVNURL=svn://svn.code.sf.net/p/zeoslib/code-0/branches/testing-7.3
SVNURL=svn://svn.code.sf.net/p/zeoslib/code-0/trunk
AddPackage1=$(Installdir)\packages\lazarus\zcomponent.lpk
; You can add the lazreport zeos package if you want
; AddPackage2=$(lazarusdir)/components/lazreport/source/addons/ZeosDB/lr_zeosdb.lpk
UnInstall1=rm -Rf $(Installdir)

[FPCUpModule71]
Name=turbobird
Description="Firebird Administration tool."
Requires=synapse
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/motaz/turbobird
ArchiveURL=https://github.com/motaz/turbobird/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule72]
; formerly in the tiopf 3rdparty repository
Name=fblib
Description="Non-GUI Firebird data access library. Requires git to be installed"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/graemeg/firebird-lib
ArchiveURL=https://github.com/graemeg/firebird-lib/archive/master.zip
AddPackage=$(Installdir)/src/fblib_design.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule73]
Name=mORMot
Description="Very extensive full featured ORM framework for FPC and Delphi."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; sqlite3 is needed for mORMot !!
GITURL=https://github.com/synopse/mORMot
ArchiveURL=https://github.com/synopse/mORMot/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule74]
Name=tiopf
Description="tiOPF object-persistence framework. Requires git to be installed."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/graemeg/tiopf
Branch=tiopf2
ArchiveURL=https://github.com/graemeg/tiopf/archive/tiopf2.zip
AddPackage1=$(Installdir)/Compilers/FPC/tiOPFGUIDsgn.lpk
; AddPackage2=$(Installdir)/Compilers/FPC/tiOPF.lpk
; AddPackage3=$(Installdir)/Compilers/FPC/tiopflcl.lpk
; AddPackage4=$(Installdir)/Compilers/FPC/tiOPFGUI.lpk
; AddPackage5=$(Installdir)/Compilers/FPC/tiOPFHelpIntegration.lpk
; create local branch tiopf2 which points to remote branch tiopf2 which is FreePascal compatible (not workable yet):
;InstallExecute1=$(basedir)/ccr/$(name)/git branch tiopf2 origin/tiopf2
;InstallExecute1=cd $(Installdir)
;InstallExecute2=git checkout tiopf2
;InstallExecute2=$(basedir)/ccr/$(name)/git checkout tiopf2
UnInstall=rm -Rf $(Installdir)

[FPCUPModule75]
Name=greyhound
; greyhoud_zeos requires zeos
; Requires=zeos
Description="An ORM (database persistence) framework for FPC/Lazarus. Requires git to be installed."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/mdbs99/Greyhound
ArchiveURL=https://github.com/mdbs99/Greyhound/archive/master.zip
AddPackage1=$(Installdir)/packages/greyhound.lpk
; AddPackage2=$(Installdir)/packages/greyhound_zeos.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule76]
Name=zmsql
Description="ZMSQL is an open source and free, TBufDataset SQL enhanced in-memory database, operating with semicolon-separated values flat text tables as a persistence store"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
ArchiveURL=http://sourceforge.net/projects/lazarus-ccr/files/zmsql/TZMSQL-0.1.20.1.zip/download
AddPackage=$(Installdir)/zmsql.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule77]
Name=ceosmw
Description="CeosMW is a package of Lazarus/FPC components for communication using JSON, with option of using JSONRPC 2.0 protocol"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/jbsolucoes/ceosmw
ArchiveURL=https://github.com/jbsolucoes/ceosmw/archive/master.zip
AddPackage=$(Installdir)/ceosmw.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule78]
Name=usercontrol
Description="UserControl ported to Lazarus"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/jbsolucoes/ucp
ArchiveURL=https://github.com/jbsolucoes/ucp/archive/master.zip
AddPackage1=$(Installdir)/package/lazarus/pckUCDataConnector.lpk
AddPackage2=$(Installdir)/package/lazarus/pckUserControlRuntime.lpk
;InstallExecute1=$(Installdir)/package/lazarus/pckUserControlDesign.lpk
;InstallExecute2=$(Installdir)/package/connectors/UCSQLdbConn/pcksqldbconn.lpk
;InstallExecute3=$(Installdir)/package/connectors/UCZeosConn/pckZeosConn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule79]
Name=dec
Description="Delphi Encryption Compendium."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/decfpc/DelphiEncryptionCompendium
UnInstall=rm -Rf $(Installdir)

[FPCUpModule80]
Name=ultramachine
Requires=fpc-xon
Description="Rest api server."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/blestan/UltraMachine
ArchiveURL=https://github.com/blestan/UltraMachine/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule81]
Name=abbrevia
Description="Advanced data compression toolkit."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/tpabbrevia/code/trunk/
AddPackage=$(Installdir)/packages/Lazarus/abbrevia.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule82]
Name=cm630commons
Description="A set of common purpose sub-programmes."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/cm630commons/code/trunk/
AddPackage=$(Installdir)/cm630commons.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule83]
Name=lazmer
Description="Packages for measurement and automation."
Requires=cm630commons
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazmer/code/trunk/
; AddPackage=$(Installdir)/lazmerdaqlibs.lpk
; AddPackage=$(Installdir)/lazmermisc.lpk
AddPackage=$(Installdir)/lazmercontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule84]
Name=notepas
Description="Notepas is a fast portable native multiplatform text editor."
; Requirements are downloaded with the package itself ... less optimal
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/beNative/lazarus
ArchiveURL=https://github.com/beNative/lazarus/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule85]
Name=uos
Description="United OpenLib of Sound."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/fredvs/uos
ArchiveURL=https://github.com/fredvs/uos/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule86]
Name=lazradio
Description="An SDR in Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/foldl/LazRadio
ArchiveURL=https://github.com/foldl/LazRadio/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule87]
Name=zcad
Description="Cross platform opensource CAD program with fast OpenGL rendering."
Category=graphics
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; SVNURL=http://svn.shamangrad.net/zcad/trunk/
GITURL=https://github.com/zamtmn/zcad
UnInstall=rm -Rf $(Installdir)

[FPCUpModule88]
Name=lamw
Description="A wizard to create JNI Android loadable module (.so) in Lazarus/Free Pascal using [datamodule like] Form Designer and Components!"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/jmpessoa/lazandroidmodulewizard
ArchiveURL=https://github.com/jmpessoa/lazandroidmodulewizard/archive/master.zip
AddPackage1=$(Installdir)/android_bridges/tfpandroidbridge_pack.lpk
AddPackage2=$(Installdir)/android_wizard/lazandroidwizardpack.lpk
AddPackage3=$(Installdir)/ide_tools/amw_ide_tools.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule89]
Name=laz4android
Description="Tools to create an Android App with Lazarus/Free Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/laztoapk/svn/trunk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule90]
Name=patchwrangler
Description="Patchwrangler lets you read unified diffs, review them, change line endings, paths, search for subdirectories if the patch was created there, and apply them using the patch program. Useful for applying FPC/Lazarus patches on Windows." 
Installdir=$(basedir)/ccr/$(name)
Enabled=0
HGURL=https://bitbucket.org/reiniero/patchwrangler
ArchiveURL=https://bitbucket.org/reiniero/patchwrangler/get/c95a0b5f2018.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule91]
Name=codelibrarian
; by Lazarus forum user taazz
Description="CodeLibrarian is an application to gather all small or big code snippets."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; GitURL=git://git.code.sf.net/p/codelibrarian/code
GitURL=https://github.com/taazz/CodeLibrarian
UnInstall=rm -Rf $(Installdir)

[FPCUPModule92]
Name=baregame
Description="Bare Game is a open source modern minimal game cross platform gaming library."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/sysrpl/Bare.Game
ArchiveURL=https://github.com/sysrpl/Bare.Game/archive/master.zip
; Install:
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/source/barerun.lpk
; Design time:
; (This fails to compile now, see https://github.com/sysrpl/Bare.Game/pull/5 )
;AddPackage=$(Installdir)/tools/design/baredsgn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule93]
Name=fortes324forlaz
Description="The Lazarus port of FortesReport, a Delphi report generator."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/fortes4lazarus/code/trunk
AddPackage=$(Installdir)/fortes324forlaz.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule94]
Name=pascalscada
Description="The PascalSCADA is: a framework for Delphi/Lazarus to quick development of HMI/SCADA applications."
; Pascal Scada will not compile out-of-the-box.
; You need to patch the source with the supplied patch inside the componentpatches directory
; Patch=$(basedir)/componentpatches/$(name).diff
Installdir=$(basedir)/ccr/$(name)
Enabled=0
Requires=fortes324forlaz
SVNURL=svn://svn.code.sf.net/p/pascalscada/code/trunk
; Install:
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/pascalscada_common.lpk
; Design time:
AddPackage1=$(Installdir)/pascalscada.lpk
AddPackage2=$(Installdir)/pascalscada_db.lpk
AddPackage3=$(Installdir)/pascalscada_hmi.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule95]
Name=castle_game_engine
Description="Cross-platform 3D and 2D game engine supporting many asset formats and graphic effects."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
Requires=lazopenglcontext
GITURL=https://github.com/castle-engine/castle-engine
ArchiveURL=https://castle-engine.sourceforge.io/latest.zip
; Install:
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/packages/castle_base.lpk
InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/packages/castle_window.lpk
; InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/packages/alternative_castle_window_based_on_lcl.lpk
; InstallExecute3=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/packages/castle_android_utilities.lpk
; Design time:
AddPackage=$(Installdir)/packages/castle_components.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule96]
Name=ovoplayer
Description="OvoPlayer is a free music manager and player for Linux and Windows."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/varianus/ovoplayer
ArchiveURL=https://github.com/varianus/ovoplayer/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule97]
Name=ovotext
Description="OvoText is a simple text editor written in Lazarus/FreePascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/varianus/ovotext
ArchiveURL=https://github.com/varianus/ovotext/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule98]
Name=jcl
Description="JEDI Code Library for fpc from http://jcl.delphi-jedi.org."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
OS_OK="windows"
GITURL=https://github.com/blikblum/jcl
ArchiveURL=https://github.com/blikblum/jcl/archive/master.zip
AddPackageLink1=$(Installdir)/jcl/packages/fpc/Jcl.lpk
AddPackageLink2=$(Installdir)/jcl/packages/fpc/JclVcl.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule99]
Name=mrmath
Description="Matrix library http://mrsoft.org."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/mikerabat/mrmath
ArchiveURL=https://github.com/mikerabat/mrmath/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule100]
Name=jcore
Description="JCore is a group of utility classes for Free Pascal applications."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/jcmoraisjr/jcore
ArchiveURL=https://github.com/jcmoraisjr/jcore/archive/master.zip
AddPackageLink1=$(Installdir)/jcorert.lpk
AddPackageLink2=$(Installdir)/jcoreopfrt.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule101]
Name=atsynedit
Description="Syntax-highlighting memo for Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/Alexey-T/ATSynEdit
ArchiveURL=https://github.com/Alexey-T/ATSynEdit/archive/master.zip
AddPackage=$(Installdir)/atsynedit/atsynedit_package.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule102]
Name=python4laz
Description="Fork of Python4Delphi to support Win/Linux/MacOS."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/Alexey-T/Python-for-Lazarus
ArchiveURL=https://github.com/Alexey-T/Python-for-Lazarus/archive/master.zip
AddPackage=$(Installdir)/python4lazarus/python4lazarus_package.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule103]
Name=cudatext
Description="Cross-platform text editor, Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/Alexey-T/CudaText
ArchiveURL=https://github.com/Alexey-T/CudaText/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule104]
Name=ddrescueview
Description="Graphical viewer for GNU ddrescue log files."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
ArchiveURL=http://sourceforge.net/projects/ddrescueview/files/Test%20builds/v0.4%20alpha%202/ddrescueview-source-0.4~alpha2.zip/download
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/source/ddrescueview.lpi
UnInstall=rm -Rf $(Installdir)

[FPCUPModule105]
Name=besen
Description="Complete ECMAScript Fifth Edition Implemention in Object Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/BeRo1985/besen
ArchiveURL=https://github.com/BeRo1985/besen/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule106]
Name=flre
Description="FLRE - Fast Light Regular Expressions - A fast light regular expression library."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/BeRo1985/flre
ArchiveURL=https://github.com/BeRo1985/flre/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule107]
Name=pasvulkan
Description="Vulkan header generator and Vulkan OOP-style API wrapper for Object Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/BeRo1985/pasvulkan
ArchiveURL=https://github.com/BeRo1985/pasvulkan/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule108]
Name=pasmp
Description="PasMP - a parallel-processing/multi-processing library for Object Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/BeRo1985/pasmp
ArchiveURL=https://github.com/BeRo1985/pasmp/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule109]
Name=fpgui
Description="fpGUI Toolkit is a cross-platform GUI toolkit using Free Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/graemeg/fpgui
Branch=develop
ArchiveURL=https://github.com/graemeg/fpGUI/archive/develop.zip
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/src/corelib/render/software/aggpas.lpk
InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/src/corelib/gdi/fpgui_toolkit.lpk
InstallExecute3=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/src/corelib/x11/fpgui_toolkit.lpk
AddPackage=$(Installdir)/extras/lazarus_ide/fpgui_ide.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule110]
Name=hashlib4pascal
Description="Delphi/FPC compatible library that provides an easy to use interface for computing hashes and checksums."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/Xor-el/HashLib4Pascal
AddPackageLink=$(Installdir)/HashLib/src/Packages/FPC/HashLib4PascalPackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule111]
Name=callite
Description="Calendar component."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/callite
ArchiveURL=http://downloads.sourceforge.net/project/lazarus-ccr/CalLite/callite-0.1.zip
AddPackage=$(Installdir)/callight_pkg.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule112]
Name=colorpalette
Description="ColorPalette for Lazarus CCR."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/colorpalette
; ArchiveURL=http://downloads.sourceforge.net/project/lazarus-ccr/colorpalette/colorpalette%200.2/LazColorPalette-0.2.1.zip
; InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/....lpk
AddPackage=$(Installdir)/lazcolorpalette.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule113]
Name=cmdbox
Description="Command box."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/cmdline
AddPackage=$(Installdir)/cmdbox.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule114]
Name=epiktimer
Description="A timer component."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/epiktimer
AddPackageLink=$(Installdir)/etpackage.lpk
AddPackage=$(Installdir)/etpackage_dsgn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule115]
Name=spktoolbar
Description="A nice toolbar."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/spktoolbar
; ArchiveURL=
; InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/....lpk
AddPackage=$(Installdir)/spktoolbarpackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule116]
Name=lazbarcodes
Description="A barcode component."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/lazbarcodes
; ArchiveURL=
; InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/....lpk
AddPackage=$(Installdir)/packages/lazbarcodes.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule117]
Name=tvplanit
Description="TurboPower Visual PlanIt, a set of data aware sophisticated visual planners."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/tvplanit
AddPackageLink=$(Installdir)/laz_visualplanit.lpk
AddPackage=$(Installdir)/laz_visualplanit_design.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule118]
Name=zengl
Description="ZenGL - cross-platform game development library written in Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/andru-kun/zengl
Branch=0.3.x
ArchiveURL=https://github.com/andru-kun/zengl/archive/0.3.x.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule119]
Name=tlazserial
Description="Serial Port Component for Lazarus (windows and linux)."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/JurassicPork/TLazSerial
ArchiveURL=https://github.com/JurassicPork/TLazSerial/archive/master.zip
AddPackage=$(Installdir)/LazSerialPort.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule120]
Name=omnixml
Description="OmniXML is a XML parser with many features."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/mremec/omnixml
ArchiveURL=https://github.com/mremec/omnixml/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule121]
Name=fpowm
Description="Fpowm is a software library that is used to access the weather data an forecasts provided by OpenWeatherMap."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/SAmeis/fpowm
ArchiveURL=https://github.com/SAmeis/fpowm/archive/master.zip
AddPackage=$(Installdir)/fpowm.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule122]
Name=pascal-futures
Description="Run Time Futures for Free Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/SAmeis/pascal-futures
ArchiveURL=https://github.com/SAmeis/pascal-futures/archive/master.zip
AddPackage=$(Installdir)/pascalfutures.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule123]
Name=pascalio
Description="Input/Output library for Raspberry Pi or any other Linux based microcontroller."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/SAmeis/pascalio
ArchiveURL=https://github.com/SAmeis/pascalio/archive/master.zip
AddPackage=$(Installdir)/pascaliogui.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule124]
Name=codebot
Description="A cross platform toolkit for Free Pascal and Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/sysrpl/Cross.Codebot
ArchiveURL=https://github.com/sysrpl/Cross.Codebot/archive/master.zip
InstallExecute1=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/source/codebot.lpk
InstallExecute2=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/source/codebotdsgn.lpk
AddPackage=$(Installdir)/source/codebotdsgn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule125]
Name=arrayops
Description="A library providing generic object pascal array and range operations."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/BBasile/ArrayOps
ArchiveURL=https://github.com/BBasile/ArrayOps/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule126]
; fpcupdeluxe source code itself
Name=fpcupdeluxe
Description="Fpcupdeluxe source code itself."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/newpascal/fpcupdeluxe
ArchiveURL=https://github.com/newpascal/fpcupdeluxe/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule127]
; fpcup source code itself
Name=fpcup
Description="Fpcup source code itself."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/LongDirtyAnimAlf/Reiniero-fpcup
ArchiveURL=https://github.com/LongDirtyAnimAlf/Reiniero-fpcup/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule128]
Name=pudgb
Description="Pascal Units Dependency Graph Builder."
Category=graphics
Requires=zcad
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/zamtmn/pudgb
UnInstall=rm -Rf $(Installdir)

[FPCUPModule129]
Name=ultrastar
Description="The free and open source karaoke singing game UltraStar Deluxe, inspired by Sony SingStar."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/UltraStar-Deluxe/USDX
UnInstall=rm -Rf $(Installdir)

[FPCUPModule130]
Name=lazprofiler
Description="One-Click-Profiler addon for Lazarus."
Installdir=$(basedir)/ccr/$(name)
Requires=epiktimer,virtualtreeview
Enabled=0
GITURL=https://github.com/PascalRiekenberg/LazProfiler
AddPackage=$(Installdir)/LazProfiler.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule131]
Name=cai
Description="Conscious Artificial Intelligence."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/cai/svncode/trunk/lazarus
UnInstall=rm -Rf $(Installdir)

[FPCUPModule132]
Name=xmlrad
Description="Web Application Server Stack for Delphi/FreePascal/Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://git.code.sf.net/p/xmlrad/code
UnInstall=rm -Rf $(Installdir)

[FPCUPModule133]
Name=james
Description="James is a collection of classes and interfaces for truly object-oriented projects written in Object Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
Requires=synapse
GITURL=https://github.com/mdbs99/james
AddPackage=$(Installdir)/pkg/james.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule134]
Name=atbinhex
Description="ATBinHex viewer for streams of unlimited size."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/Alexey-T/ATBinHex-Lazarus
ArchiveURL=https://github.com/Alexey-T/ATBinHex-Lazarus/archive/master.zip
AddPackage=$(Installdir)/atbinhex/atbinhex_package.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule135]
Name=evssimplegraph
Description="Port of the delphiarea TSimpleGraph for delphi to lazarus and lcl."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/taazz/evssimplegraph
ArchiveURL=https://github.com/taazz/EvsSimpleGraph/archive/master.zip
InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/Package/ugraphrtm.lpk
AddPackage=$(Installdir)/Package/ugraphdsgn.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule150]
Name=rpi-tms
Description="TMS LCL HW-Pack for Raspberry Pi."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/tmssoftware/TMS-LCL-HW-Pack-for-Raspberry-Pi
UnInstall=rm -Rf $(Installdir)

[FPCUPModule151]
Name=rpi-pascalio
Description="Input/Output library for Raspberry Pi or any other Linux based microcontroller."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/zeljkoc/pascalio
Branch=zeljus
UnInstall=rm -Rf $(Installdir)

[FPCUPModule160]
Name=pas2js-rtl
Description="Pas2js is a Pascal to Javascript transpiler. This installs also the RTL"
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=https://svn.freepascal.org/svn/projects/pas2js/trunk
InstallExecute1=$(tooldir)/make FPC=$(fpcbin) INSTALL_PREFIX=$(fpcdir) --directory=$(Installdir) distclean
InstallExecute2=$(tooldir)/make FPC=$(fpcbin) INSTALL_PREFIX=$(fpcdir) --directory=$(Installdir) all install
AddPackageLink1=$(Installdir)/packages/rtl/pas2js_rtl.lpk.lpk
AddPackageLink2=$(Installdir)/packages/fcl-base/fcl_base_pas2js.lpk
AddPackageLink3=$(Installdir)/packages/fcl-db/pas2js_fcldb.lpk
AddPackageLink4=$(Installdir)/packages/fpcunit/fpcunit_pas2js.lpk
; UnInstall=rm -Rf $(Installdir)
UnInstallExecute=$(removeinstalldirectory)

[FPCUPModule161]
Name=kyoukai
Description="The Kyoukai, A Simplified Pascal Web Framework."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/afuriza/kyoukai_framework
; InstallExecute=$(lazarusdir)/lazbuild --primary-config-path=$(LazarusPrimaryConfigPath) $(Installdir)/src/packages/kyoukai_standard.lpk
AddPackageLink=$(Installdir)/src/packages/kyoukai_standard.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule162]
Name=rest-dw
Description="DB style (visual) components for use in REST Servers."
Installdir=$(basedir)/ccr/$(name)
Requires=indy,zeos
Enabled=0
SVNURL=svn://svn.code.sf.net/p/rest-dataware-componentes/dataware/trunk
; GITURL=https://github.com/Rest-Dataware/RDW-Componente
AddPackage=$(Installdir)/CORE/Packages/Lazarus/resteasyobjectscore.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule163]
Name=zxing
Description="ZXing (for Lazarus) is a native Object Pascal barcode scanner library that is based on the well known open source ZXing (Zebra Crossing)."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/LongDirtyAnimAlf/ZXing.Delphi
Branch=v_3.0
UnInstall=rm -Rf $(Installdir)

[FPCUPModule164]
Name=vtx-clientserver
Description="VTX consists of a web / websocket server written in FreePascal, and a browser based javascript client."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/codewar65/VTX_ClientServer
UnInstall=rm -Rf $(Installdir)

[FPCUPModule165]
Name=bithelpers
Description="BitHelpers enable additional bit manipulation for qword, longword, word, byte and boolean FreePascal types."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://bitbucket.org/avra/bithelpers.git
; HGURL=https://bitbucket.org/avra/bithelpers
AddPackageLink=$(Installdir)/bithelpers_pkg.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule166]
Name=pasettimino
Description="Pasettimino is a very lite native Pascal ethernet communication library for S7 Siemens Simatic PLC."
Installdir=$(basedir)/ccr/$(name)
Requires=bithelpers,synapse
Enabled=0
GITURL=https://bitbucket.org/avra/pasettimino.git
; HGURL=https://bitbucket.org/avra/pasettimino
AddPackageLink=$(Installdir)/pasettimino_pkg.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule167]
Name=promet-erp
Description="Promet is an management system for nearly any type of data you or your company needs."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/cutec-chris/promet-erp
UnInstall=rm -Rf $(Installdir)

[FPCUPModule168]
Name=fpcusblib
Description="Library to access USB Devices from Freepascal/Lazarus."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/cutec-chris/fpusblib
AddPackage=$(Installdir)/fpusb.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule169]
Name=fpcusbhid
Description="A library (and clone of the Jedi JVCL library) to access Hid devices on Linux and Windows with FPC."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/LongDirtyAnimAlf/FPC-USB-HID
ArchiveURL=https://github.com/LongDirtyAnimAlf/FPC-USB-HID/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule170]
Name=chakracore
Description="Delphi and Free Pascal bindings and classes for Microsoft's ChakraCore library."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/tondrej/chakracore-delphi
UnInstall=rm -Rf $(Installdir)

[FPCUPModule171]
Name=macosext
Description="MacOS features extension for LCL."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/skalogryz/macosext
AddPackage=$(Installdir)/macosext.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule172]
Name=metal
Description="Metal is an Apple framework that allows supports high performance graphics."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/genericptr/Metal-Framework
AddPackage=$(Installdir)/lazarus/package/lazmetalcontrol.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule173]
Name=metal-demos
Description="Demos for Apple Metal in Objective Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/neurolabusc/Metal-Demos
UnInstall=rm -Rf $(Installdir)

[FPCUPModule174]
Name=cef3
Description="Chromium Embedded Framework for Free Pascal."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/dliw/fpCEF3
AddPackage=$(Installdir)/Component/cef3.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule175]
Name=gs-core
Description="GS Core functions shared by several projects."
Category=tools
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/VincentGsell/GS.Core
UnInstall=rm -Rf $(Installdir)

[FPCUPModule176]
Name=gs-pxl
Description="Wrapper component for PXL graphics library."
Category=graphics
Requires=pxl
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/VincentGsell/PXLComponents
UnInstall=rm -Rf $(Installdir)

[FPCUPModule177]
Name=darkglass
Description="DarkGlass is a game engine written from scratch using Delphi (FPC compatible)."
Category=graphics
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/chapmanworld/DarkGlass
UnInstall=rm -Rf $(Installdir)

[FPCUPModule178]
Name=ess-model
Description="ESS-Model is a powerful, reverse engine, UML-tool for Pascal and Java-files."
Category=tools
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/JuhaManninen/Laz-Model
UnInstall=rm -Rf $(Installdir)

[FPCUPModule179]
Name=graphics32
Description="Graphics32 is a graphics library for Delphi and Lazarus. Optimized for 32-bit pixel formats."
Category=graphics
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/graphics32/graphics32
AddPackageLink=$(Installdir)/Source/Packages/GR32_Lazarus.lpk
AddPackage=$(Installdir)/Source/Packages/GR32_DSGN_Lazarus.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule180]
Name=graphics32-rbc
Description="Rubicube Graphics Extension on Graphics 32 Library."
Category=graphics
Requires=graphics32
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/uparlayan/Graphics32_RBC
UnInstall=rm -Rf $(Installdir)

[FPCUPModule181]
Name=mbf
Description="Microcontroller Board Framework is a cross-platform framework for developing code on ARM Cortex-M and Microchip PIC32 controllers."
Category=development,embedded
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/michael-ring/mbf
UnInstall=rm -Rf $(Installdir)

[FPCUPModule182]
Name=xmailer
Description="This plugin offers a really simple way to send e-mails using Free Pascal."
Category=development,internet,email
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/MFernstrom/xmailer
AddPackageLink=$(Installdir)/pkg/xmailerpkg.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule183]
Name=websocket_bauglir
Description="WebSocket server/client implementation in Pascal."
Category=development,internet,websocket
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/MFernstrom/Bauglir-WebSocket-2
UnInstall=rm -Rf $(Installdir)

[FPCUPModule184]
Name=qrcodegenlib4pascal
Description="QRCodeGenLib4Pascal is a Delphi/FPC Port of Fast-QR-Code-generator written by Nayuki."
Category=tools,barcode
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/Xor-el/QRCodeGenLib4Pascal
ArchiveURL=https://github.com/Xor-el/QRCodeGenLib4Pascal/archive/master.zip
AddPackageLink=$(Installdir)/QRCodeGenLib/src/Packages/FPC/QRCodeGenLib4PascalPackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule185]
Name=rnl
Description="RNL is an UDP-based network library for real-time applications and games."
Category=development,internet,network
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/BeRo1985/rnl
ArchiveURL=https://github.com/BeRo1985/rnl/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule186]
Name=DelphiAWSSDK
Description="The Delphi AWS SDK enables Delphi/Pascal developers to easily work with Amazon Web Services."
Category=development,internet,network
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/novuslogic/DelphiAWSSDK
ArchiveURL=https://github.com/novuslogic/DelphiAWSSDK/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUPModule187]
Name=manualdock
Description="This IDE extension allows the Messages window to dock to the source editor. Go to [View]->[Dock Messages window]."
Enabled=0
Installdir=$(basedir)/ccr/$(name)
SVNURL=http://svn.code.sf.net/p/lazarus-ccr/svn/components/manualdock
UnInstall=rm -Rf $(Installdir)
AddPackage=$(installdir)/manualdock.lpk

[FPCUPModule188]
Name=lgenerics
Description="Generic algorithms and data structures for Lazarus/Free Pascal."
Enabled=0
Installdir=$(basedir)/ccr/$(name)
GITURL=https://github.com/avk959/LGenerics
ArchiveURL=https://github.com/avk959/LGenerics/archive/master.zip
AddPackageLink=$(Installdir)/packages/LGenerics.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule189]
Name=ibx
Description="Firebird Database API for both Linux and Windows platforms."
Enabled=0
Installdir=$(basedir)/ccr/$(name)
SVNURL=https://svn.mwasoftware.co.uk/public/ibx/trunk/
AddPackageLink1=$(Installdir)/fbintf.lpk
AddPackageLink2=$(Installdir)/ibnongui.lpk
AddPackageLink3=$(Installdir)/ibexpress.lpk
AddPackage=$(Installdir)/ibcontrols.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule191]
Name=mapviewer
Description="Lazarus mapviewer."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
SVNURL=svn://svn.code.sf.net/p/lazarus-ccr/svn/components/lazmapviewer
AddPackage=$(Installdir)/lazmapviewerpkg.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule192]
Name=CEF4Delphi
Description="CEF4Delphi is an open source project to embed Chromium-based browsers in applications made with Delphi or Lazarus/FPC."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/salvadordf/CEF4Delphi
ArchiveURL=https://github.com/salvadordf/CEF4Delphi/archive/master.zip
AddPackage=$(Installdir)/packages/cef4delphi_lazarus.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule193]
Name=simplebaselib4pascal
Description="Object Pascal library for encoding/decoding Base16, Base32, Base58, Base64, Base85."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GitURL=https://github.com/Xor-el/SimpleBaseLib4Pascal
AddPackageLink=$(Installdir)/SimpleBaseLib/src/Packages/FPC/SimpleBaseLib4PascalPackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUPModule194]
Name=cryptolib4pascal
Description="Delphi/FPC compatible crypto for modern Object Pascal."
Installdir=$(basedir)/ccr/$(name)
Requires=hashlib4pascal,simplebaselib4pascal
Enabled=0
GitURL=https://github.com/Xor-el/CryptoLib4Pascal
AddPackageLink=$(Installdir)/CryptoLib/src/Packages/FPC/CryptoLib4PascalPackage.lpk
UnInstall=rm -Rf $(Installdir)

[FPCUpModule195]
Name=mORMotBP
Description="Boilerplate HTTP Server for Synopse mORMot Framework."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
; sqlite3 is needed for mORMot !!
GITURL=https://github.com/eugeneilyin/mORMotBP
ArchiveURL=https://github.com/eugeneilyin/mORMotBP/archive/master.zip
UnInstall=rm -Rf $(Installdir)

[FPCUpModule196]
Name=ezthreads
Description="Simple to use threading library."
Installdir=$(basedir)/ccr/$(name)
Enabled=0
GITURL=https://github.com/mr-highball/ezthreads
ArchiveURL=https://github.com/mr-highball/ezthreads/archive/master.zip
UnInstall=rm -Rf $(Installdir)

 в-  8   €€
 S E T T I N G S _ I N I                   ; settings.ini
; =========
; example settings for fpcup
; Options not specified take the default value
; ==============================================================================
; use e.g.
; fpcup --inifile=settings.ini --inisection=devfull
; to compile with the options specified in that section
; ==============================================================================
[fpcupinfo]
inifileversion=1.0.0.1

[general]
; Full FPC+Lazarus download & compile
; Here use FPC trunk instead of the default version:
fpcurl=trunk
; If you are using raspbian or another armhf architecture, please add
; -dFPC_ARMHF to fpcopt below to generate hardfloat compiler/binaries
; also specify your FPU type etc in fpcopt, e.g. -CfVFPV2
; Compiles with debug options:
; fpcopt="-g -gl -O1"
; lazopt="-g -gl -O1"
; Use our own names to avoid overwiting defaults
fpcuplinkname=fpcuptrunkdebug
lazlinkname=lazarus_fpctrunk
; Keeps changes you made to the svn checkout:
keeplocalchanges=true
; You can enable/disable modules specified in fpcup.ini:
fpspreadsheet=1
mupdf=0

[update]
; Update only (no previous cleanup) version of general
; Uses FPC trunk instead of the default version:
fpcurl=trunk
; Compiles with debug options:
; fpcopt="-g -gl -O1"
; lazopt="-g -gl -O1"
; Use our own names to avoid overwiting defaults
fpcuplinkname=fpcuptrunkdebug
lazlinkname=lazarus_fpctrunk
; Keeps changes you made to the svn checkout:
keeplocalchanges=true
; You can enable/disable modules specified in fpcup.ini:
fpspreadsheet=1
mupdf=0
; Limit compile to getting new fpc, but not a new Lazarus
; and build the essentials
only=FPCGetOnly,FPCBuildOnly,lazbuild,useride
; if on windows, don't build the crosscompiler. If on linux, this doesn't matter.
skip=crosswin32-64
; No additional packages will be built - only rebuilt automatically
; as the ide is recompiled

[android]
; Android ARM cross compiler
; a full fpcup run must have been done before
; please adjust paths etc
; No support for LCL/Lazarus
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
; FPC_ARMHF could be used, while Android will always use the ARMEL compiler
; this comes in handy when using an ARM cross-compiler for both Android and Linux hardfloat
; see output of the help of the cross-compiler
; fpcopt="-dFPC_ARMHF"
fpcopt=""
fpcuplinkname=""
lazlinkname=""
cputarget=arm
ostarget=android
; You can specify exact instruction set and floating point support etc:
crossopt="-CpARMV7A -CfVFPV3"
; ... or something more conservative/compatible:
;crossopt="-CpARMV6"
verbose=0
; We only need an FPC here; assume FPC has been updated by regular update
only=FPCBuildOnly
; No LCL support on Android yet

[dos]
; dos cross compiler
; a full fpcup run must have been done before
; please adjust paths etc
; No support for LCL/Lazarus
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
fpcopt=""
fpcuplinkname=""
lazlinkname=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
cputarget=i8086
ostarget=msdos
; DOS compiler expects smartlinking (library and unit); it does not support debug symbols
crossopt="-CX -XXs"
verbose=0
; We only need an FPC here; assume FPC has been updated by regular update
only=FPCBuildOnly

[linuxarm]
; cross compiler
; a full fpcup run must have been done before (e.g. win32full)
; does not update packages
; please adjust paths etc
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarus
primary-config-path=c:\development\lazarussettings
lazlinkname=""
fpcuplinkname=""
; NO FPIC: not supported on 2.6.x
; http://bugs.freepascal.org/view.php?id=19729
; otherwise Fatal: Internal error 200502052
; see about -dFPC_ARMHF below
fpcopt=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
noconfirm=true
keeplocalchanges=true
cputarget=arm
; if using armhf, you MUST specify -dFPC_ARMHF in the FPC options; 
; specifying in crossopt is not enough.
; -fPIC not supported on FPC 2.6.x, only on 2.7.x; 
fpcopt="-dFPC_ARMHF"

; safe default but slow:
;crossopt="-CpARMV6 -CaEABI -CfSOFT"

; Raspbian for Raspberry Pi safe
; ARMv6 instruction set
; if using arm hf (hard float/floating point), please specify -dFPC_ARMHF
; copy over /lib, /usr/lib 
; /usr/lib/arm-linux-gnueabihf (Raspbian) => note: 
; some .so files are actually scripts; check
; grep -i "ld script" *
; Remove those .so and copy over (or symlink) the .so.x to .so in order for the linker to find them
; Examples:
; libpthread.so
; libc.so
; libgcc_s.so
; to cross lib dir (try compiling and keep copying until no errors left)
; Note: -CpARMV6Z parameter not supported on 2.6.x, only on 2.7.x
; Note: -CaEABIHF parameter not supported on 2.6.x, only on 2.7.x
; Note: don't use -fPIC; will give segmentation fault
crossopt="-CpARMV6 -CfVFPV2"

; for Raspberry Pi 2 and BeagleBoard Black with hardfloat:
; if using armhf, also specify -dFPC_ARMHF (in fpcopt) to avoid gtk scrollbar errors
; Note: -CaEABIHF not supported on 2.6.x, only on 2.7.x
;crossopt="-CpARMV7A -CfVFPV3 -OoFASTMATH -CaEABIHF"
ostarget=linux
; we only need to do Lazarus as FPC won't change here
only=FPCCleanOnly,FPCBuildOnly
skip=FPCGetOnly,lazbuild,bigide,useride

[linuxarmel]
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarus
primary-config-path=c:\development\lazarussettings
lazlinkname=""
fpcuplinkname=""
fpcopt=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
noconfirm=true
keeplocalchanges=true
cputarget=arm
fpcopt="-dFPC_ARMEL"
crossopt="-CpARMV6 -CfVFPV2 -OoFASTMATH -CaDEFAULT"
ostarget=linux
; we only need to do Lazarus as FPC won't change here
only=FPCCleanOnly,FPCBuildOnly
skip=FPCGetOnly,lazbuild,bigide,useride

[linuxarmeb]
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarus
primary-config-path=c:\development\lazarussettings
lazlinkname=""
fpcuplinkname=""
fpcopt=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
noconfirm=true
keeplocalchanges=true
cputarget=arm
fpcopt="-dFPC_ARMEB"
crossopt="-CpARMV6 -CfVFPV2 -OoFASTMATH -CaDEFAULT"
ostarget=linux
; we only need to do Lazarus as FPC won't change here
only=FPCCleanOnly,FPCBuildOnly
skip=FPCGetOnly,lazbuild,bigide,useride

[linuxarmhf]
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarus
primary-config-path=c:\development\lazarussettings
lazlinkname=""
fpcuplinkname=""
fpcopt=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
noconfirm=true
keeplocalchanges=true
cputarget=arm
fpcopt="-dFPC_ARMHF"
crossopt="-CpARMV7A -CfVFPV3 -OoFASTMATH -CaEABIHF"
ostarget=linux
; we only need to do Lazarus as FPC won't change here
only=FPCCleanOnly,FPCBuildOnly
skip=FPCGetOnly,lazbuild,bigide,useride

[linuxmips]
; Linux mips big endian cross compiler
; a full fpcup run must have been done before (e.g. win32full)
; does not update packages
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarus
primary-config-path=c:\development\lazarussettings
fpcopt=""
fpcuplinkname=""
lazlinkname=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
noconfirm=true
keeplocalchanges=true
; Name for FPC 2.7.x+ is mips, not mipseb:
cputarget=mips
; Position-independent code; unknown whether required
crossopt="-fPIC"
ostarget=linux
; we only need to do Lazarus as FPC won't change here
; FPCCleanOnly
only=FPCBuildOnly
skip=FPCGetOnly,lazbuild,bigide,useride

[linuxmipsel]
; Linux mips little endian cross compiler
; a full fpcup run must have been done before (e.g. win32full)
; does not update packages
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarus
primary-config-path=c:\development\lazarussettings
fpcopt=""
fpcuplinkname=""
lazlinkname=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
noconfirm=true
keeplocalchanges=true
cputarget=mipsel
; Position-independent code:
crossopt="-fPIC"
ostarget=linux
; we only need to do Lazarus as FPC won't change here
; FPCCleanOnly
only=FPCBuildOnly
skip=FPCGetOnly,lazbuild,bigide,useride

[lazinstaller]
; Build Lazarus installer (setup.exe) from working Lazarus
; Only runs on Windows (or probably on wine on *nix)
; Running this will take quite some time due to svn checkout

; First run regular fpcup to get working fpc, Lazarus
; Adjust paths below as needed.

; Example: use FPC trunk instead of the default:
fpcdir=c:\development\fpctrunk
fpcurl=http://svn.freepascal.org/svn/fpc/trunk
lazdir=c:\development\lazarusfpctrunk
primary-config-path=c:\development\lazarusfpctrunksettings
; No need for any new shortcuts:
fpcuplinkname=""
lazlinkname=""
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
; Keep any modified files in laz, fpc repo:
keeplocalchanges=true
; This is the most important part:
; This tells fpcup to only build the installer
only=installerlazwin

[fixes30]
; FPC 3.0 fixes only (no Lazarus)
fpcdir=c:\development\fpcfixes30
fpcurl=http://svn.freepascal.org/svn/fpc/branches/fixes_3_0
; Let's specify Lazarus info in case we ever want to add lazarus
lazdir=c:\development\lazarus14fixes_fixes30
; Just an example: build Lazarus fixes 1.4:
lazurl=http://svn.freepascal.org/svn/lazarus/branches/fixes_1_4
primary-config-path=c:\development\configlazarus14fixes_fixes30
; If we ever build Lazarus, do create a link/shortcut:
lazlinkname=lazarus14fixes_fixes30
; Do not create a batch file with shortcut
fpcuplinkname=""
; We can use the binutils/bootstrap dirs that we usually use:
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
; Just install/update, no questions asked:
noconfirm=true
; In case you want to submit patches, it's nice to be able to update
; without overwriting your fixes:
keeplocalchanges=true
; Specify we only want FPC, not Lazarus
; in case of fpc patches FPCBuildOnly
; Use fpc -Px86_64 for cross compiling to 64 bit.
only=FPC,FPCCrossWin32-64
skip=helplazarus,lazarus,lazbuild,useride

[fixes26]
; FPC 2.6 fixes only (no Lazarus)
fpcdir=c:\development\fpcfixes26
fpcurl=http://svn.freepascal.org/svn/fpc/branches/fixes_2_6
; Let's specify Lazarus info in case we ever want to add lazarus
lazdir=c:\development\lazarus12_fixes26
; Just an example: build Lazarus 1.2:
lazurl=http://svn.freepascal.org/svn/lazarus/tags/lazarus_1_2
primary-config-path=c:\development\configlazarus12_fixes26
; If we ever build Lazarus, do create a link/shortcut:
lazlinkname=lazarus12_fixes26
; Do not create a batch file with shortcut
fpcuplinkname=""
; We can use the binutils/bootstrap dirs that we usually use:
binutilsdir=c:\development\fpcbootstrap
fpcbootstrapdir=c:\development\fpcbootstrap
; Just install/update, no questions asked:
noconfirm=true
; In case you want to submit patches, it's nice to be able to update
; without overwriting your fixes:
keeplocalchanges=true
; Specify we only want FPC, not Lazarus
; in case of fpc patches FPCBuildOnly
; Use fpc -Px86_64 for cross compiling to 64 bit.
only=FPC,FPCCrossWin32-64
skip=helplazarus,lazarus,lazbuild,useride

[anchordocking]
; Just a plain install except enable anchordocking package
anchordocking=1
  O  4   €€
 S P L A S H _ L O G O                 ЙPNG

   IHDR   Г   Є   ј _   gAMA  ±Пьa   bKGD € € €†љІУ   	pHYs  „  „B(Ыx   tIMEа32ЅG7Ж  ћIDATxЏнЭ{T‘eю«_3√pgPФ‘qoА®Ѓy„µ-„тЈiлzьепмѓtџУЏbYл;y)/е/ЂэYЪХХky…ТЯw≈/)©Ї^@Aјбтьюqfа;ћwШѕлЬѕ90уэ>япчщЉзщ>ѕзєБD"СH$ЙD"СH$ЙD"СH$ЙD"СH$ЙD"СH$ЙD"СH$ЕFfA”d@пsр;#$µБ≥ІaЖ'>ІWkqип°C.dB≤	ЏЖBN.,nмЬAРqюk7їё AрГ-„ЭQ•`иyЩ`Т?-'
 ЮЙВ≠юPИZЛВ]÷ќчuЕuёfзЁ=«nНВƒ¶ЃЫ£cаэґp—jі Џј≠ґp&
юЩ /НД1Щ†Х^r AЧП∆ј∆@Єyѓ3kMUэaBэsІГЊ7ЉЕЦќл	+їцџuPcйь{ЌDЬ~ НД“s*тИлџ√й∆Ь†—^µд»(8`нЉ0Єр8DZЇцTЇЦщByS"∞d~`МЕчF@oйI;}ваk•@}{ >ЉЈв<ВЫr§DxЏ +aTs=BЎkЊPёё]§gm Fƒјз>p[ifwБm”Ѕњ6НTШ–N6u^gЎ\ње5	¬їЅЪъх
5,Кае€?ййFи££аАќ∆ОДmS!`4ƒtЕOф
ёнpu4tњчъ¬”aр≥Џ"®op™?МЦ^ѓ«√Р÷>„CХ≠ЩЏОНБрЩШ уџјE•з&¬Љ{гq∞IIQ-уЕтёрчћV∞ и÷>іеuPпЧ]<
&«√¬ґp∆Цs;ј°Yа3ҐЇЅ2Є’R"®o±∞stmХ"Ш	Б=aa\Ј'µwЪqЌ9w,ИЗ•APд,№k!рK*ьґU	!ЮWP±sій]@ хЌLљ`йt–{і&@ІЃрYKЊУЁ’в`їµЄЗџУ
УC!_:ZєЕ√©З°њ'Х±∞QЦЌОI\г№^Г``8ЬРNµ[≈©0ўmЕ–юв•“ЩкШФІ¬4ЈЅd0ƒ¬«Zй@’Ќ “а)Ј¬`и№vK«9ќpэ!x»•Е0 RЏ»÷BЛX(ьв≤Ёбi08
§£ZќҐ!ыwвjљМУэ°X:®е≠'|КЂz ”ьј(г”AM
<пt!фЕ?ъ5≥ІQЪ™1ИЫCaА”Д0~пWo4≤4зY$p ®©t7§\ЋzЅ_[TC`®Ѓ…ћw=Дл-6$$фЕ_d∆їЃ≈¬з¬TКЖ=2√]ЊuQн–ќL–ёdfїЗEAv¶£¶ххЖєЩ…ncэ—Щ5 Fy7sJЩ4зЦ™F&Gј}≤њЅ}KЗ4Ш§Z=!∆<еLfЃЫZlSEЙжxЈћT76o®}пхЂќV!§BтqxІ
|РЄ-’жEe|’ђ¶ГЊ£М'xМЕЅ≈{g•џT2ШаЕ<шљь]yедg
аЎ|xzЬЗзdzЧadняК≈рdЦBЩ}ЮE1Щ≈bHГ—0QfЭзqЏэpІthRAwжW eк<ЦHWt`xZц=xьH®¶:Э>бp\fШgЫ/T>]uM&Ю9SdAкўTБ÷ОZ≠dВчE+kJ<П"HіZ2aъwЩƒ)±?ЄiM`’-O]&FbIzЛЅш=∞©F•≈««”©S'—лх£”йh”¶^^^бннM@@ ;vма”O?m2MНF√‘©S—йФG‘KKK©ђђT||~~>Зnф___FОЙVџрН[\\МҐќg&УЙЁїwїЬЉЌ+з4§≥ c{м1°Ф№№\°„лЫL3##C8ЪџЈoЛGyƒъ:‘< Њ€ю{Ы“\±bЕ+Ј,к2
}UЮg0Д—hTЬa6lГЅjzйййвк’ЂҐ%®™™ЋЦ-111же хzСЮЮ.÷Ѓ]+*++mJЂђђLtмЎ—}ƒ–ЁЉ;ЛкЪ;wЃMWRR"ё|уMсдУOКММ1~ьx1{цl±€~б™ЂЂ≈хл„EEEE≥”ш√юак1ЗЇ°зЧ‘Uj>>>вџoњ≠=4√ x‘С°зјј@±eЋЦV%ВЪЪ1oё<°—h№K]аЁЦЄиУO>)NЭ:есB»ЌЌtІQ”€О8ЃАЉkЁMНFCZZ√З'==ЭЄЄ8"""–h№ww≈ЪЪќЭ;«ЅГў∞aџЈoІ™™ эд!x‘ў фсс!!!вЙ'ЮpЛ_~ee•Ш8qҐИЛЛССС¬„„„Ё;≠оЖћ;≥9a™иhQXXи6ѓВ[ЈnЙ§§$OйЅ4	єќЊ///±wп^ЈЂ\Њ|Yƒ««{Ж∆A_љ,д=oё<Ј≠,^ЄpADEEєњzЅgяHrr≤0ЩLnЁzшоїп№љё Эћ{=:н&іZ≠»……сИждЗ~и÷b–іЗ<gёƒƒЙ=*Њ0vмXч√dЄяЩхНFcS к≥ѕ>………"))IМ3F,Y≤ƒеZ«ПwO1$Ы«8:нRRRgтк’ЂЕVЂµж~нµ„Duuµ]N4ЩLвЁwяГAAAжEєCCЫ’І“ѓ_?чCшї3o`б¬ЕК2чд…У¬«««bМњц≥сг«7їW1;;[фи—√jУ„VAћЫ7ѕэƒe^ќi7∞}ыvEЩы‘SO)Jo¬Д	6ЧЫ7on≤- ЋЋІєvнZчГZ;Љ7„ќЭ;І®зѕ`0(ощ[Љx±bІнџЈѕjЙSяюсП(NчгП?v?1Д@Й3o†®®®…М-((∞©Bклл+туу†й‘©Уві'OЮђXk÷ђq;1hKоћјuхМZҐҐҐ¬¶ф***xх’WЫ<цoыщщщК”юс«{й“%Јмyu™OЮ<ўдѓђ∞∞–жжj@@@£г.ЛЛЛE@@АMГNТТТЧ#GОtЂR!МNЯY}б¬Е&П	#22RсX!F£С]їvY=fг∆ННFE%S-КОЂЃЃжаЅГо6o"ѕбbИЛЛc∆МVњ?tиРҐtЖnУг О=jхї≠[ЈЏь,>ш†Ґг≤≤≤(**≤шЁгП?N€юЃЈc±7Ьq®t:пњ€>узѕ«««твpJ'ФLЩbыья+WЃXэ.77„жфFН•иЄхл„[эЃWѓ^|ынЈ§§§ЄЪтZgшуЯ€|чъьуѕ[и('І••ўtэзЮ{ќjZнџЈЈ)≠ƒƒDQSS”д=^њ~]ZMзрб√B!Ѓ]ї&bcc]¶ќР€б01DEEЙ“““:Hђ yынЈЙби—£BІ”)Ѓф5и“•ЛMѕу…'Я(Ї«W^y≈jCЖiхфссqЇЉ†f№Э}0rБхл„7»®c«ОЁНщяkљ{чV\K_ґlYЭіµ÷DPPР())±Ъќ§IУ?ЋИ#ѕШк–°Г’«≈ЛЬУЩЩйt1Д√YЗ5-УУУ≠©_}хХ≈–oVVЦbAЉьтЋVQыўк’ЂM#++ЂIQ">>^Q`L!-ZdyШЎXqвƒ	ЛзTTTИќЭ;;UЭбЗЙa”¶MНfЏЮ={DXXX£EhSlЏіIДЗЗ7\Т∆„Wђ\єRQ≥gѕґ(ИЏ€,юЪ≠’BBB№ѕ»С#≈µk„Хvќ≤ƒ{÷чT5б=z(к( ѕѕ)))uќЁґmЫMВ(//|рБxцўg≈ћЩ3≈в≈Л≈Х+WlЮцV_T~~~вўgЯµi≤рЬ9sФ(_|сЕҐsKKKEhh®s¶'@е£Ра1,Y≤ƒ¶yoЉс∆ЁМи’ЂЧЌ3Ы’†ҐҐBlяЊ]ђY≥F|с≈в∆Н6f©]F ..ЃY3ізќЭлћНH‘G{{{7Y$Z+b333Ehh®XЇt©[qЂЃЃ)))"!!Aђ[ЈЃўbќЌЌuКЇ√л√Ў±cн ЎТТ±b≈
Ы∆8Ыммl±yуfE1И¶hйК§ƒ»pИё{п=!i>ѕ<уLK/Ъ√={U©О÷jµ>Iу6lXЛ^/ЎЉ5СP]=zф <<\z‘zцмўТ}’]лнАЂЪъцн+љi'111x{{Ј»µ¬a€?б†Cƒ–їwoйMzycbbZдZнбУѓzљJЙ«∆∆Jo™4ю√—іБ¬ыћS*лК!ЃI1ЄЅЅЅ-Q*|і
-Х?™qБ∞∞0йIрххuhъюP÷ё∞Ў"ф6/хg€Eьэ•'UјЦеМЫYqьr≥Х@лІ’ЄИµamџ(//wXЏz®МЗ7≠}ѓняi\ь!ZЕЕЕK;
>яVЭjыЅё0Х	[)++УЮTБВВGХ
U]ћЛЄYEЫ	&?sМЏ.Й,QFEE/^tT©∞i'd5* C#EЗRlЩ¶&±ћЙ'≤И®№кЩMІИЖ]:;/xо№9йM;il“ПЭ•¬;бФ"1lГ}av61≥≥≥•7ндЫoЊQ=Ќ6p©,TrlmяДВ≠ц\ф»С#uюяЈoузѕЧѓмў≥ЗЯ~ъ©ќg555dee©zяґUDЖBЖќќЅgѕЮ≠3–Г≈≈≈rд 8`q4xн–}5≠#мвЮЅ+6	)¬Аjц≈WђXQgBIнtЄИИ±j’*qужЌV-Д/њьтоіЊП>ъ®ќw≥fЌRU~`©Ќ.VАц№@zzzЭ4НbЏіiBІ”	@Иa√ЖЙИЭ;wК≥gѕК≤≤2Пu~MMН8uкФxэх„ErrтЁ9хЈh*))±8”ыжBЉЎЬ„ ]&@ІpЉВЪ#&≠VЋщузф…Я8qВеЋЧ≥a√nёЉ©,HҐ„ЎаsЭNЗЅ`y±ЩРРЛЯЛ[÷n≠Ў†)жзg±√®vї≈¶ВoьтЋ/Ь:u
£—xчїффt,XјаЅГлЬ≥j’*fќЬ©Z]°#|љщ-T7[ ±рсyШЎ№yс≈Y∞`Б≈п™ЂЂ9yт$З"''Зэл_\љz’b(ы∆Н>+//o∞§ПВввbЧђ(FGG”љ{wЖ¬И#HLLlpМ…dҐ[ЈnК-QB \OБ°_7#РЎ@0(Њ©ДfЕЏµkG~~>~~~NuDYYЈoяnPc/))ipђ—hƒd25Ѓ•Rђ±НRюююDDD©®'WЌRA"fВЈUЋ»Ўaѕыjщте≤ў†АҐҐ"Ы„Йhћв`Экњ™Tш≠ќОх§CBB№j7g1e ’Д–r«C{З≥1€Sя,Ы3gОфv#lЁЇUµнCа“ѓ!—aп№Збa/05чu:Э8rдИфЇ.]Ї$ЏґmЂ÷,к≤!рЗW¬baГ=7ЏІOЈя]FmL&У:t®*B–AM?x©Ejдг†Л.џs√ъ”Я§TOxёj—&Z"ћ≥зЖ5НвE+<5Ји_fВwЛК!Љbаk{n<  @dggЈj!Љр¬j
aџLtJ зшU0\Јз¬√√≈й”І[Э™™™ƒћЩ3UB<мШЏћо’иsµцv©vмXІЫџ”1Нb№Єq™	°мЭЃ1’љьѓљ)О?осB»……чяњjBИЕПB0Ѓ¬$hџ—№b_Р$$Dмёљџc_ѓљцЪ™ЫЭ∆Ѕќ)аzу«BB(Ь≥їНђ”ЙEЛyФцпя/zцм©кЄДЮ∞f6ЄмЊЗ`XЂс∞У'Oґy©=WгтеЋb∆М¬ЋЋK5и°2—<ЎHГЂУ
OыAє-ґnЁкv"ЄqгЖxй•ЧT•дЈъ№≥jЂ[–&ыВQ≠LШ0aВ8юЉЋЛ //OћЪ5Ђ—≠Ъkна«tHwЋaяэaЦѓJ% фzљШ2eК»ЋЋs)ФЦЦКЈёzK$%%9rAп]c†+оћ`x,Ў<yWµМсхх”¶M«ОsЪ  ЋЋ≈Ц-[ƒфй”Eїvн&0&ј_№Ґ~†Д4ЧСY+WЃtшАЩккjСУУ#Ц.]*∆О+Њ0g[8У£]ЅЗ™*q4<pёэъ8вfu:………6М‘‘TъцнkuDtSTWWУЧЧ«±c«»……бЗ~ааЅГV7So0E¬“З`бZЄеqbЄШ
?€У£Д£o^£!66ЦЎЎXввви–°aaaгЦЦЦRZZJ~~>.\ ??ЯЯюўбKжX£ЬЊюЇ6“HА€≤≥sЋ”,КъјЛ”°х-А5R£аpkБT«¬жH¶5У	ёњВyAP‘Е–•Ѕx$u*ЧЁї¬:o;ўЇЛiћ"8ЎЮЏЎћ…H≠ВA0$Њґg^ЖЂЪ™ҐaG*<ж11Г≈иЎбeЮк÷"0јхќрNЖ=Sа%02ba] ФЄУ |°<
ґ%¬МI–VzREЕШыбЕHЎлХЃ( ‘tАм0<№зi>p…чЏиuFЁДAЈ еЦ≥F!Pд∞7≤ЊВCЮъГtщJќS–о8<\}*ћ÷їЁфS Ь’√…@ш.
Њ€Чiny<nWг]>яјјЂ–љв °}іљнL`®В:KѓшАQХZ(“ј-\„√o(рГЛ!РяѓЖЂ≠хUнСЌЯLрхБ:°PъGs]D"СH$ЙD"СH$ЙD"СH$ЙD"СH$ЙD"СH$ЙD"СH$Ќ€bmh©∆L4≤    IENDЃB`В Ѕ  L   €€
 D A R W I N Q T 5 H A C K _ L A Z P A T C H                   Index: ide/applicationbundle.pas
===================================================================
--- ide/applicationbundle.pas	(revision 56789)
+++ ide/applicationbundle.pas	(working copy)
@@ -55,6 +55,8 @@
   ContentsDirName = 'Contents';
   MacOSDirName = 'MacOS';
   ResourcesDirName = 'Resources';
+  FrameworksDirName = 'Frameworks';
+  PluginsDirName = 'Plugins';
   PropertyListFileName = 'Info.plist';
   PackageInfoFileName = 'PkgInfo';
   PackageInfoHeader = 'APPL????';
@@ -61,6 +63,13 @@
   
 implementation
 
+{$ifdef Unix}
+{$ifdef LCLQT5}
+uses
+  Unix, BaseUnix;
+{$endif}
+{$endif}
+
 { TApplicationPropertyList }
 
 constructor TApplicationPropertyList.Create(const ExeName: String; Title: String; const Version: String = '0.1');
@@ -120,12 +129,68 @@
 
 function CreateApplicationBundle(const Filename: String; Title: String;
   Recreate: boolean): TModalResult;
+{$ifdef Unix}
+{$ifdef LCLQT5}
+function CreateQT5Symlinks(aApp:string):boolean;
 var
+  DirectoriesFoundList,FilesFoundList : TStringList;
+  DirCounter,FileCounter:integer;
+  FrameworkDir,FrameworkName,FileToLink:string;
+  success:boolean;
+begin
+  // create symlinks for Frameworks to save space
+  result:=true;
+  DirectoriesFoundList := FindAllDirectories(aApp,False);
+  try
+    for DirCounter := 0 to DirectoriesFoundList.Count -1 do
+    begin
+      FrameworkDir := ExcludeTrailingPathDelimiter(DirectoriesFoundList.Strings[DirCounter]);
+      FrameworkName := ExtractFileNameOnly(FrameworkDir);
+      FilesFoundList := FindAllFiles(FrameworkDir+'/Versions');
+      try
+        for FileCounter := 0 to FilesFoundList.Count -1 do
+        begin
+          FileToLink := FilesFoundList.Strings[FileCounter];
+          if ExtractFileName(FileToLink) = FrameworkName then
+          begin
+            FileToLink:=CreateRelativePath(FileToLink,FrameworkDir);
+
+            // do we already have some sort of file ?
+            if (FileExists(FrameworkDir+'/'+FrameworkName)) then
+            begin
+              // if its not a link, then delete file !! tricky ...
+              if (FpReadLink(FrameworkDir+'/'+FrameworkName) = '') then DeleteFile(FrameworkDir+'/'+FrameworkName);
+            end;
+
+            if (NOT FileExists(FrameworkDir+'/'+FrameworkName)) then
+            begin
+              // create the symlink towards the base framework library
+              success:=(FPSymLink(PChar(FileToLink),PChar(FrameworkDir+'/'+FrameworkName))=0);
+              if NOT success then result:=false;
+            end;
+
+          end;
+        end;
+      finally
+        FilesFoundList.Free;
+      end;
+    end;
+  finally
+    DirectoriesFoundList.Free;
+  end;
+end;
+{$endif}
+{$endif}
+var
   AppBundleDir: String;
   ContentsDir: String;
   MacOSDir: String;
   ResourcesDir: String;
   sl: TStrings;
+  {$ifdef LCLQT5}
+  SelfBundleName: String;
+  x:integer;
+  {$endif}
 begin
   AppBundleDir := ExtractFileNameWithoutExt(Filename) + ApplicationBundleExt + PathDelim;
   if not Recreate and DirectoryExistsUTF8(AppBundleDir) then exit(mrOk);
@@ -154,6 +219,33 @@
   Result:=ForceDirectoryInteractive(ResourcesDir,[mbIgnore,mbRetry]);
   if Result<>mrOk then exit;
 
+  {$ifdef LCLQT5}
+  // create 'applicationname.app/Contents/Frameworks/' directory
+  Result:=ForceDirectoryInteractive(ContentsDir + FrameworksDirName + PathDelim,[mbIgnore,mbRetry]);
+  if Result<>mrOk then exit;
+  // create 'applicationname.app/Contents/Plugins/' directory
+  Result:=ForceDirectoryInteractive(ContentsDir + PluginsDirName + PathDelim,[mbIgnore,mbRetry]);
+  if Result<>mrOk then exit;
+
+  // this can be very wrong, but wrong part will be removed below.
+  SelfBundleName := ExtractFileNameWithoutExt(Application.ExeName) + ApplicationBundleExt;
+
+  // we only want the .app bundle name, so remove shit ... ;-)
+  x:=pos(PathDelim + ContentsDirName + PathDelim + MacOSDirName,SelfBundleName);
+  if x>0 then
+     Delete(SelfBundleName,x,MaxInt);
+
+  if FileIsSymlink(SelfBundleName) then
+     SelfBundleName:=GetPhysicalFilename(SelfBundleName,pfeOriginal);
+
+  FileUtil.CopyDirTree(SelfBundleName + PathDelim + ContentsDirName + PathDelim + FrameworksDirName,AppBundleDir + ContentsDirName + PathDelim + FrameworksDirName,[cffOverwriteFile,cffCreateDestDirectory]);
+  {$ifdef Unix}
+  CreateQT5Symlinks(AppBundleDir + ContentsDirName + PathDelim + FrameworksDirName);
+  {$endif}
+
+  FileUtil.CopyDirTree(SelfBundleName + PathDelim + ContentsDirName + PathDelim + PluginsDirName,AppBundleDir + ContentsDirName + PathDelim + PluginsDirName,[cffOverwriteFile,cffCreateDestDirectory]);
+  {$endif}
+
   Result:=mrOk;
 end;
 
Index: ide/debugmanager.pas
===================================================================
--- ide/debugmanager.pas	(revision 56789)
+++ ide/debugmanager.pas	(working copy)
@@ -2171,7 +2171,11 @@
   *)
   if NewDebuggerClass.RequiresLocalExecutable then begin
 
+    {$ifndef LCLQT5}
     if BuildBoss.GetProjectUsesAppBundle then
+    {$else}
+    if True then
+    {$endif}
     begin
       // it is Application Bundle (darwin only)
 
@@ -2180,10 +2184,14 @@
         if not PromptOnError then
           ClearPathAndExe
         else
+          {$ifndef LCLQT5}
           if IDEMessageDialog(lisLaunchingApplicationInvalid,
             Format(lisTheLaunchingApplicationBundleDoesNotExists,
               [LaunchingApplication, LineEnding, LineEnding, LineEnding+LineEnding]),
             mtError, [mbYes, mbNo, mbCancel]) = mrYes then
+          {$else}
+          if True then
+          {$endif}
           begin
             if not BuildBoss.CreateProjectApplicationBundle then Exit;
           end
   Љ  <   €€
 F P C U P D E L U X E . E N                   msgid ""
msgstr "Content-Type: text/plain; charset=UTF-8"

#: fpcupdeluxemainform.upbuildallcrosscompilers
msgid "Going to auto-build all installed cross-compilers !"
msgstr ""

#: fpcupdeluxemainform.upbuildallcrosscompilerscheck
msgid "Checking FPC configfile [fpc.cfg] for cross-compilers in "
msgstr ""

#: fpcupdeluxemainform.upbuildallcrosscompilersfound
msgid "Found crosscompiler for "
msgstr ""

#: fpcupdeluxemainform.upbuildallcrosscompilersupdate
msgid "Going to update cross-compiler."
msgstr ""

#: fpcupdeluxemainform.upbuildcrosscompiler
msgid "Going to install a cross-compiler from available sources."
msgstr ""

#: fpcupdeluxemainform.upcheckupdate
msgid "Please wait. Checking for updates."
msgstr ""

#: fpcupdeluxemainform.upupdatefound
msgid "New fpcupdeluxe version available"
msgstr ""

#: fpcupdeluxemainform.upupdatenotfound
msgid "No updates found."
msgstr ""

#: tform1.autocrossupdate.caption
msgid "Auto-update compilers"
msgstr ""

#: tform1.autocrossupdate.hint
msgid "Auto-update all installed cross-compilers."
msgstr ""

#: tform1.basicsheet.caption
msgid "Basic"
msgstr ""

#: tform1.bitbtnfpcandlazarus.caption
msgid "Install/update FPC+Laz"
msgstr ""

#: tform1.bitbtnfpcandlazarus.hint
msgid "Will install/update the selected version of both FPC and Lazarus."
msgstr ""

#: tform1.bitbtnfpconly.caption
msgctxt "tform1.bitbtnfpconly.caption"
msgid "Only"
msgstr ""

#: tform1.bitbtnfpconly.hint
msgid "Only install/update selected FPC version."
msgstr ""

#: tform1.bitbtnhalt.caption
msgid "Halt"
msgstr ""

#: tform1.bitbtnhalt.hint
msgid "Try to quit fpcupdeluxe"
msgstr ""

#: tform1.bitbtnlazarusonly.caption
msgctxt "tform1.bitbtnlazarusonly.caption"
msgid "Only"
msgstr ""

#: tform1.bitbtnlazarusonly.hint
msgid "Only install/update selected Lazarus version."
msgstr ""

#: tform1.btnclearlog.caption
msgid "Clear log"
msgstr ""

#: tform1.btninstalldirselect.caption
msgid "Set InstallDir"
msgstr ""

#: tform1.btninstallmodule.caption
msgid "Install module"
msgstr ""

#: tform1.btninstallmodule.hint
msgid "Install the selected module."
msgstr ""

#: tform1.btnsetupplus.caption
msgid "Setup+"
msgstr ""

#: tform1.btnsetupplus.hint
msgid "Open the extended settings form."
msgstr ""

#: tform1.btnuninstallmodule.caption
msgid "Uninstall module"
msgstr ""

#: tform1.btnuninstallmodule.hint
msgid "Uninstall the selected module."
msgstr ""

#: tform1.buttoninstallcrosscompiler.caption
msgid "Install cross-compiler"
msgstr ""

#: tform1.buttoninstallcrosscompiler.hint
msgid "Install the selected CPU-OS cross-compiler."
msgstr ""

#: tform1.checkautoclear.caption
msgid "AutoClear"
msgstr ""

#: tform1.crosssheet.caption
msgid "Cross"
msgstr ""

#: tform1.dinobtn.caption
msgid "2.0.2+0.9.16"
msgstr ""

#: tform1.dinobtn.hint
msgid "Will install/update prehistoric FPC and Lazarus"
msgstr ""

#: tform1.embeddedbtn.caption
msgid "Embedded"
msgstr ""

#: tform1.embeddedbtn.hint
msgid "Get FPC for SAM embedded"
msgstr ""

#: tform1.fixesbtn.caption
msgid "Fixes"
msgstr ""

#: tform1.fixesbtn.hint
msgid "Will install/update current fixes versions of both FPC and Lazarus"
msgstr ""

#: tform1.fpcversionlabel.caption
msgid "FPC version"
msgstr ""

#: tform1.installdiredit.hint
msgid "Directory to install FPC and Lazarus"
msgstr ""

#: tform1.lazarusversionlabel.caption
msgid "Lazarus version"
msgstr ""

#: tform1.mchineeslanguage.caption
msgid "Chinees"
msgstr ""

#: tform1.memosummary.hint
msgid "Will show error"
msgstr ""

#: tform1.menglishlanguage.caption
msgid "English"
msgstr ""

#: tform1.menuitem1.caption
msgid "About"
msgstr ""

#: tform1.menuitem2.caption
msgid "Languages"
msgstr ""

#: tform1.modulesheet.caption
msgid "Modules"
msgstr ""

#: tform1.mormotbtn.caption
msgid "mORMot"
msgstr ""

#: tform1.mormotbtn.hint
msgid "Get the mORMot for FPC"
msgstr ""

#: tform1.npbtn.caption
msgid "NewPascal"
msgstr ""

#: tform1.npbtn.hint
msgid "Will install/update NewPascal."
msgstr ""

#: tform1.oldbtn.caption
msgid "2.6.4 + 1.4"
msgstr ""

#: tform1.oldbtn.hint
msgid "Will install/update FPC 2.6.4 and Lazarus 1.4"
msgstr ""

#: tform1.radgrpcpu.caption
msgid "CPU"
msgstr ""

#: tform1.radgrpos.caption
msgid "OS"
msgstr ""

#: tform1.realfpcurl.hint
msgctxt "tform1.realfpcurl.hint"
msgid "Double click to allow editing"
msgstr ""

#: tform1.reallazurl.hint
msgctxt "tform1.reallazurl.hint"
msgid "Double click to allow editing"
msgstr ""

#: tform1.stablebtn.caption
msgid "Stable"
msgstr ""

#: tform1.stablebtn.hint
msgid "Will install/update stable versions of both FPC and Lazarus"
msgstr ""

#: tform1.statusmessage.text
msgid "Sitting and waiting"
msgstr ""

#: tform1.trunkbtn.caption
msgid "Trunk"
msgstr ""

#: tform1.trunkbtn.hint
msgid "Will install/update trunk version of both FPC and Lazarus."
msgstr ""

   <   €€
 F P C U P D E L U X E . Z H                   пїњmsgid ""
msgstr ""
"Content-Type: text/plain; charset=UTF-8"
"Project-Id-Version: "
"POT-Creation-Date: "
"PO-Revision-Date: "
"Last-Translator: йГСеїЇеє≥@е§ПеЃЧиРН aka  robsean <robsean@126.com>"
"Language-Team: "
"MIME-Version: 1.0"
"Content-Transfer-Encoding: 8bit"
"Language: zh_CN"
"X-Generator: Poedit 1.8.7.1"
"X-Poedit-SourceCharset: UTF-8"

#: tform1.autocrossupdate.caption
msgid "Auto-update compilers"
msgstr "иЗ™еК®жЫіжЦ∞зЉЦиѓСеЩ®"

#: tform1.autocrossupdate.hint
msgid "Auto-update all installed cross-compilers."
msgstr "иЗ™еК®жЫіжЦ∞жЙАжЬЙеЈ≤еЃЙи£ЕзЪДиЈ®еє≥еП∞зЉЦиѓСеЩ®"

#: tform1.bitbtnfpcandlazarus.caption
#, fuzzy
#| msgid "Install/update FPC+Laz"
msgid "Install/update FPC+Lazarus"
msgstr "еЃЙи£Е/жЫіжЦ∞FPC+Lazarus"

#: tform1.bitbtnfpcandlazarus.hint
msgid "Will install/update the selected version of both FPC and Lazarus."
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞йАЙжЛ©зЪДFPCеТМLazarusзЙИжЬђ"

#: tform1.bitbtnfpconly.caption
msgctxt "tform1.bitbtnfpconly.caption"
msgid "Only"
msgstr "дїЕ"

#: tform1.bitbtnfpconly.hint
msgid "Only install/update selected FPC version."
msgstr "дїЕеЃЙи£Е/жЫіжЦ∞йАЙжЛ©зЪДFPCзЙИжЬђ"

#: tform1.bitbtnhalt.caption
msgid "Halt"
msgstr "еБЬж≠Ґ"

#: tform1.bitbtnhalt.hint
msgid "Try to quit fpcupdeluxe"
msgstr "е∞ЭиѓХйААеЗЇfpcupdeluxe"

#: tform1.bitbtnlazarusonly.caption
msgctxt "tform1.bitbtnlazarusonly.caption"
msgid "Only"
msgstr "дїЕ"

#: tform1.bitbtnlazarusonly.hint
msgid "Only install/update selected Lazarus version."
msgstr "дїЕеЃЙи£Е/жЫіжЦ∞йАЙжЛ©зЪДLazarusзЙИжЬђ"

#: tform1.btnclearlog.caption
msgid "Clear log"
msgstr "жЄЕзРЖжЧ•ењЧ"

#: tform1.btninstalldirselect.caption
msgid "Set InstallDir"
msgstr "иЃЊзљЃеЃЙи£ЕзЫЃељХ"

#: tform1.btninstallmodule.caption
msgid "Install module"
msgstr "еЃЙи£Еж®°еЭЧ"

#: tform1.btninstallmodule.hint
msgid "Install the selected module."
msgstr "еЃЙи£ЕйАЙжЛ©зЪДж®°еЭЧгАВ"

#: tform1.btnsetupplus.caption
msgid "Setup+"
msgstr "еЃЙи£Ез®ЛеЇП"

#: tform1.btnsetupplus.hint
msgid "Open the extended settings form."
msgstr "жЙУеЉАе±ХеЉАзЪДиЃЊзљЃз™ЧдљУ"

#: tform1.btnuninstallmodule.caption
msgid "Uninstall"
msgstr "еНЄиљљ"

#: tform1.btnuninstallmodule.hint
msgid "Uninstall the selected module."
msgstr "еНЄиљљйАЙжЛ©зЪДж®°еЭЧгАВ"

#: tform1.buttoninstallcrosscompiler.caption
msgid "Install cross-compiler"
msgstr "еЃЙи£ЕиЈ®еє≥еП∞зЉЦиѓСеЩ®"

#: tform1.buttoninstallcrosscompiler.hint
msgid "Install the selected CPU-OS cross-compiler."
msgstr "еЃЙи£ЕйАЙжЛ©зЪДCPU-OSиЈ®еє≥еП∞зЉЦиѓСеЩ®"

#: tform1.caption
msgid "Form1"
msgstr ""

#: tform1.checkautoclear.caption
msgid "AutoClear"
msgstr "иЗ™еК®жЄЕзРЖ"

#: tform1.dinobtn.caption
msgid "2.0.2+0.9.16"
msgstr "2.0.2+0.9.16"

#: tform1.dinobtn.hint
msgid "Will install/update prehistoric FPC and Lazarus"
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞еП≤еЙНзЪДFPCеТМLazarus"

#: tform1.embeddedbtn.caption
msgid "Embedded"
msgstr "еµМеЕ•зЪД"

#: tform1.embeddedbtn.hint
msgid "Get FPC for SAM embedded"
msgstr "иОЈеЊЧFPCдїОSAMеµМеЕ•зЪД"

#: tform1.fixesbtn.caption
msgid "Fixes"
msgstr "дњЃе§Н"

#: tform1.fixesbtn.hint
msgid "Will install/update current fixes versions of both FPC and Lazarus"
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞FPCеТМLazarusзЪДељУеЙНдњЃе§НзЙИжЬђ"

#: tform1.fpcversionlabel.caption
msgid "FPC version"
msgstr "FPCзЙИжЬђ"

#: tform1.installdiredit.hint
msgid "Directory to install FPC and Lazarus"
msgstr "еЃЙи£ЕFPCеТМLazarusзЪДзЫЃељХ"

#: tform1.lazarusversionlabel.caption
msgid "Lazarus version"
msgstr "LazarusзЙИжЬђ"

#: tform1.memosummary.hint
msgid "Will show error"
msgstr "е∞ЖжШЊз§ЇйФЩиѓѓ"

#: tform1.menuitem1.caption
msgid "About"
msgstr "еЕ≥дЇО"

#: tform1.mormotbtn.caption
msgid "mORMot"
msgstr "mORMot"

#: tform1.mormotbtn.hint
msgid "Get the mORMot for FPC"
msgstr "дЄЇFPCиОЈеЊЧmORMot"

#: tform1.npbtn.caption
msgid "NewPascal"
msgstr "NewPascal"

#: tform1.npbtn.hint
msgid "Will install/update NewPascal."
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞NewPascalгАВ"

#: tform1.oldbtn.caption
msgid "2.6.4 + 1.4"
msgstr "2.6.4 + 1.4"

#: tform1.oldbtn.hint
msgid "Will install/update FPC 2.6.4 and Lazarus 1.4"
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞FPC 2.6.4еТМLazarus 1.4"

#: tform1.radgrpcpu.caption
msgid "CPU"
msgstr "CPU"

#: tform1.radgrpos.caption
msgid "OS"
msgstr "жУНдљЬз≥їзїЯ"

#: tform1.realfpcurl.hint
msgctxt "tform1.realfpcurl.hint"
msgid "Double click to allow editing"
msgstr "еПМеЗїжЭ•еЕБиЃЄзЉЦиЊС"

#: tform1.reallazurl.hint
msgctxt "tform1.reallazurl.hint"
msgid "Double click to allow editing"
msgstr "еПМеЗїжЭ•еЕБиЃЄзЉЦиЊС"

#: tform1.stablebtn.caption
msgid "Stable"
msgstr "з®≥еЃЪ"

#: tform1.stablebtn.hint
msgid "Will install/update stable versions of both FPC and Lazarus"
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞FPCеТМLazarusзЪДз®≥еЃЪзЙИжЬђ"

#: tform1.statusmessage.text
msgid "Sitting and waiting"
msgstr "з≠ЙеЊЕ"

#: tform1.trunkbtn.caption
msgid "Trunk"
msgstr "дЄїеє≤"

#: tform1.trunkbtn.hint
msgid "Will install/update trunk version of both FPC and Lazarus."
msgstr "е∞ЖеЃЙи£Е/жЫіжЦ∞FPCеТМLazarusзЪДдЄїеє≤зЙИжЬђ"

   X   €€
 D A R W I N Q T 5 H A C K S I M P L E _ L A Z P A T C H                   Index: lcl/interfaces/qt5/qt56.pas
===================================================================
--- lcl/interfaces/qt5/qt56.pas	(revision 60897)
+++ lcl/interfaces/qt5/qt56.pas	(working copy)
@@ -10002,7 +10002,7 @@
 procedure QTextEdit_zoomIn(handle: QTextEditH; range: Integer = 1); cdecl; external Qt5PasLib name 'QTextEdit_zoomIn';
 procedure QTextEdit_zoomOut(handle: QTextEditH; range: Integer = 1); cdecl; external Qt5PasLib name 'QTextEdit_zoomOut';
 procedure QTextEdit_placeholderText(handle: QTextEditH; retval: PWideString); cdecl; external Qt5PasLib name 'QTextEdit_placeholderText';
-procedure QTextEdit_setPlaceholderText(handle: QTextEditH; AnonParam1: PWideString); cdecl; external Qt5PasLib name 'QTextEdit_setPlaceholderText';
+//procedure QTextEdit_setPlaceholderText(handle: QTextEditH; AnonParam1: PWideString); cdecl; external Qt5PasLib name 'QTextEdit_setPlaceholderText';
 
 type
   QTextEdit_textChanged_Event = procedure () of object cdecl;
Index: lcl/interfaces/qt5/qtwidgets.pas
===================================================================
--- lcl/interfaces/qt5/qtwidgets.pas	(revision 60897)
+++ lcl/interfaces/qt5/qtwidgets.pas	(working copy)
@@ -10148,7 +10148,7 @@
   W: WideString;
 begin
   W := UTF8ToUTF16(ATextHint);
-  QTextEdit_setPlaceholderText(QTextEditH(Widget), @W);
+  //QTextEdit_setPlaceholderText(QTextEditH(Widget), @W);
 end;
 
 procedure TQtTextEdit.setReadOnly(const AReadOnly: Boolean);
  (     €€ €€               (   А                                                                                                                                                                                                                                                   А                           Щ                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Т                                                                                           h                                                                                                                                                                                                                                                                                                                                                                                                                   a                       w  E  2)  %1  9  ?  D  P  Y  X  Y  P  G  @  :  3  $*  1  L  €                      А                                                                                                                                                                                                                                                                                                                                                                                                           j  -4  S  t  £  љ  —  я  о  щ  €  €  €  €  €  €  
€  ь  р  г  “  њ  ђ  К  c   I  7,  Х                  J                                                                                                                                                                                                                                                                                                                                                                   U               n  )S  З  є  	÷  р  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  ь  и  
ѕ  і  Е  (U  Z$              Q                                                                                                                                                                                                                                                                                                                                                   ?           €  4T  Ы  	÷  л  ь  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  э  л  №  ©  /_  Ј              Y                                                                                                                                                                                                                                                                                                                               ?           j  ,v  ‘  у  ь   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  э  х  
в  "Ш  @>              E                                                                                                                                                                                                                                                                                                                           L  .~  з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  э  –  0d  V                                                                                                                                                                                                                                                                                                      А           °  *  ,h  д   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  а  +{    J          <                                                                                                                                                                                                                                                                           A           J  )N  »  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  е  "В  -!  Й          E                                                                                                                                                                                                                                                               -       €   12  †  ю   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  №  v  ;                                                                                                                                                                                                                                                                           ґ  $g  Џ  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  ƒ  -]  €      ;                                                                                                                                                                                                                                               M       U  †  т   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€444€KKK€\\\€ccc€ccc€ccc€___€UUU€>>>€"""€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  о  ™  E:          b                                                                                                                                                                                                                                   <       V%  ƒ  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €$$$€kkk€ІІІ€”””€ббб€ззз€ммм€ррр€ссс€ссс€ссс€ррр€ооо€ййй€ггг€№№№€———€ІІІ€vvv€FFF€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  	з  &i          <                                                                                                                                                                                                                           @       BB  з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€www€№№№€ччч€ъъъ€эээ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€эээ€ыыы€шшш€ччч€ќќќ€ИИИ€???€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ъ  њ  S)      1                                                                                                                                                                                                               8           BN  р   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€,,,€¶¶¶€ыыы€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ттт€†††€CCC€


€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  я  1H              >                                                                                                                                                                                               ;           4b  ч   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €			€+++€ЧЧЧ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘‘‘€ggg€###€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  	ы  %В  J                                                                                                                                                                                                  B       и  ,Y  	к   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €(((€ИИИ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ььь€ЬЬЬ€DDD€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  Ю  9)      <                                                                                                                                                                                   O           .T  й   €   €   €   €   €   €   €   €   €   €   €   €   €   €			€___€„„„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ююю€ЂЂЂ€MMM€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €     98          t                                                                                                                                                                                   78  „  €   €   €   €   €   €   €   €   €   €   €   €   €   €€ФФФ€ччч€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ооо€ЮЮЮ€(((€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ў  9O          ^                                                                                                                                                                           C  ћ  €   €   €   €   €   €   €   €   €   €   €   €   €   €%%%€њњњ€эээ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€яяя€www€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  	з  .q          U                                                                                                                                                               8       #©   €   €   €   €   €   €   €   €   €   €   €   €   €   €%%%€џџџ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ъъъ€ЊЊЊ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  о  -m          Y                                                                                                                                                       I       5Б   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ккк€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ккк€666€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  	у  *n          b                                                                                                                                                       G5  ъ   €   €   €   €   €   €   €   €   €   €   €   €   €€ййй€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ппп€MMM€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  р  -X  ф      А                                                                                                                                       P       z
  …   €   €   €   €   €   €   €   €   €   €   €   €   €€ЎЎЎ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ннн€WWW€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  с  .R  €                                                                                                                                                  %Л   €   €   €   €   €   €   €   €   €   €   €   €   €			€єєє€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ккк€OOO€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  р  8G      7                                                                                                                               D       ;:  	д   €   €   €   €   €   €   €   €   €   €   €   €   €ДДД€ььь€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ёёё€888€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  в  E;      A                                                                                                                               ў  Ђ  €   €   €   €   €   €   €   €   €   €   €   €   €GGG€ййй€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€–––€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ’  j       G                                                                                                                   ;       +M  	й   €   €   €   €   €   €   €   €   €   €   €   €€≥≥≥€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¶¶¶€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  є  д      Q                                                                                                                   ^  ѓ  €   €   €   €   €   €   €   €   €   €   €   €   €ZZZ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€RRR€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ы  Ь                                                                                                                          #D  м   €   €   €   €   €   €   €   €   €   €   €   €€»»»€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ююю€ююю€ююю€ююю€ююю€ююю€ююю€ююю€ююю€ююю€эээ€эээ€эээ€эээ€эээ€эээ€эээ€эээ€эээ€эээ€эээ€эээ€ююю€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ооо€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  с  'c          E                                                                                                       Y  Ч  €   €   €   €   €   €   €   €   €   €   €   €€SSS€€€€€€€€€€€€€€€€€€€€€€€€€ъъъ€ссс€ккк€жжж€ддд€ддд€ддд€ддд€ггг€ббб€ббб€ббб€ббб€ааа€яяя€ёёё€ёёё€ёёё€ЁЁЁ€№№№€№№№€№№№€џџџ€–––€ЋЋЋ€ћћћ€ћћћ€ЋЋЋ€љљљ€ЉЉЉ€ЉЉЉ€ЉЉЉ€ЄЄЄ€ЃЃЃ€ђђђ€ђђђ€ђђђ€®®®€ЫЫЫ€ЬЬЬ€ЬЬЬ€ЭЭЭ€УУУ€МММ€МММ€МММ€МММ€ЛЛЛ€УУУ€ЯЯЯ€µµµ€———€ббб€ййй€ффф€€€€€€€€€€€€€€€€€€€€€ХХХ€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ÷  ;4          ™                                                                                                   &.  й   €   €   €   €   €   €   €   €   €   €   €   €€њњњ€€€€€€€€€€€€€ююю€џџџ€ЄЄЄ€ККК€VVV€111€€€€€€€€€€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€€€€€€			€			€			€


€€€€€€€€€€   €€'''€iii€ѓѓѓ€ззз€€€€€€€€€€€€€ооо€"""€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  І  L                                                                                                     M  !s  €   €   €   €   €   €   €   €   €   €   €   €   €***€€€€€€€€€€€€€№№№€ЕЕЕ€,,,€   €€222€PPP€aaa€kkk€lll€lll€lll€mmm€sss€xxx€xxx€xxx€xxx€{{{€ДДД€ДДД€ДДД€ДДД€ДДД€ООО€РРР€РРР€РРР€ППП€ФФФ€ЪЪЪ€ЪЪЪ€ЪЪЪ€ЪЪЪ€ЫЫЫ€£££€•••€•••€•••€•••€ЂЂЂ€∞∞∞€∞∞∞€∞∞∞€∞∞∞€≤≤≤€єєє€їїї€ЇЇЇ€ЇЇЇ€ЇЇЇ€ЇЇЇ€їїї€ЈЈЈ€¶¶¶€ССС€qqq€OOO€€   €@@@€ґґґ€€€€€€€€€ыыы€ССС€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ы  !g  •                                                                                              N     ’   €   €   €   €   €   €   €   €   €   €   €   €   €БББ€€€€€€€€€………€<<<€   €GGG€ШШШ€ЊЊЊ€№№№€ххх€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ффф€ЌЌЌ€РРР€€€ƒƒƒ€€€€€€€€€“““€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  и  14  |                                                                                              5C  €   €   €   €   €   €   €   €   €   €   €   €   €   €ЎЎЎ€€€€€иии€III€€ЯЯЯ€иии€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒƒƒ€€<<<€€€€€€€€€ррр€```€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  µ      ;                                                                                            Ц   €   €   €   €   €   €   €   €   €   €   €   €   €€€€€€€€€€ккк€ДДД€¶¶¶€щщщ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЄЄЄ€√√√€€€€€€€€€€€€€ЬЬЬ€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  5d      L                                                                                       ж   €   €   €   €   €   €   €   €   €   €   €   €   €TTT€€€€€€€€€€€€€ююю€ююю€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€јјј€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  к  g                                                                                      EC  €   €   €   €   €   €   €   €   €   €   €   €   €   €ППП€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ввв€AAA€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  $Щ                                                                              А       'М   €   €   €   €   €   €   €   €   €   €   €   €   €   €ііі€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ъъъ€\\\€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  у  G-      D                                                                           ѕ   €   €   €   €   €   €   €   €   €   €   €   €   €   €’’’€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€vvv€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   ю  Ѓ                                                                              Ж  
ш   €   €   €   €   €   €   €   €   €   €   €   €   €   €иии€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€МММ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  о  ;F      F                                                                   9S   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ууу€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЭЭЭ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ю  ®  €                                                                      $Б   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ссс€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¶¶¶€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  	д  /F      N                                                               ™   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €жжж€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™™€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  С  €                                                                  ‘   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €–––€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•••€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Ў  .4                                                                  и   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ЂЂЂ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ШШШ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  o  €                                                               з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ВВВ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ААА€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  њ  6                                                               з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €GGG€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€jjj€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ы  &@  €                                                            з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ууу€TTT€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  !О  A                                                           з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €∆∆∆€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘‘‘€222€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ў    X                                                        з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €mmm€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€§§§€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ъъъ€≈≈≈€ёёё€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЃЃЃ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  :M                                                           з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€эээ€ХХХ€€ЬЬЬ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ћћћ€"""€nnn€ккк€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ыыы€~~~€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  #Э                                                           з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €


€ІІІ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€эээ€ґґґ€$$$€   €666€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€эээ€ччч€ххх€ччч€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ююю€ххх€≈≈≈€РРР€ЫЫЫ€ЁЁЁ€ччч€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€эээ€ЕЕЕ€   €€zzz€ккк€ыыы€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ааа€999€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  я  i                                                       з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€HHH€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ккк€ttt€   €   €   €ЌЌЌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ккк€ЂЂЂ€aaa€JJJ€```€їїї€ттт€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   €<<<€   €   €   €   €^^^€ааа€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЁЁЁ€:::€   €   €€УУУ€ккк€€€€€€€€€€€€€€€€€€€€€€€€€ююю€ђђђ€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  I<                                                       з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€єєє€€€€€€€€€€€€€€€€€€€€€яяя€SSS€   €   €   €ZZZ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЋЋЋ€HHH€   €   €   €   €   €hhh€ссс€€€€€€€€€€€€€€€€€€€€€€€€€ўўў€!!!€   €   €   €   €   €   €***€ЌЌЌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ППП€€   €   €   €===€   €€€€€€€€€€€€€€€€€€€€€ттт€@@@€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  )Ж                                                       з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ZZZ€ъъъ€€€€€€€€€€€€€ооо€FFF€   €   €   €   €–––€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ћћћ€'''€   €   €   €   €   €   €   €ttt€€€€€€€€€€€€€€€€€€€€€эээ€sss€   €€   €   €   €   €   €   €555€џџџ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ммм€777€   €   €   €   €$$$€њњњ€€€€€€€€€€€€€€€€€ЂЂЂ€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Ѕ      P                                                з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€ЃЃЃ€€€€€€€€€€€€€XXX€   €   €   €   €MMM€ффф€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ттт€)))€   €€   €   €   €   €   €   €"""€ггг€€€€€€€€€€€€€€€€€ыыы€   €   €   €   €   €   €   €   €   €   €ooo€шшш€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ННН€			€   €   €   €   €444€ўўў€€€€€€€€€ззз€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  
ф  Ш                                                   з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €HHH€жжж€€€€€†††€   €   €   €   €   €¶¶¶€ююю€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ggg€   €   €   €   €   €   €   €   €   €€±±±€€€€€€€€€€€€€€€€€ыыы€€   €   €   €   €   €   €   €   €   €€∆∆∆€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ххх€€   €   €   €   €   €ННН€эээ€€€€€???€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  CD                                                   з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ООО€щщщ€€   €   €   €   €€———€€€€€€€€€€€€€€€€€€€€€€€€€€€€€яяя€€   €   €   €   €   €   €   €   €   €€¶¶¶€€€€€€€€€€€€€€€€€ыыы€€   €   €   €   €   €   €   €   €   €   €ЗЗЗ€ыыы€€€€€€€€€€€€€€€€€€€€€€€€€€€€€uuu€€   €   €   €   €RRR€ччч€YYY€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  )q                                                   з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€```€€   €   €   €   €EEE€ддд€€€€€€€€€€€€€€€€€€€€€€€€€€€€€БББ€€   €   €   €   €   €   €   €   €   €€ЄЄЄ€€€€€€€€€€€€€€€€€ььь€???€   €   €   €   €   €   €   €   €   €   €HHH€ййй€€€€€€€€€€€€€€€€€€€€€€€€€€€€€“““€€   €   €   €   €:::€@@@€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   Ш                                                   з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €mmm€ххх€€€€€€€€€€€€€€€€€€€€€€€€€€€€€===€€   €   €   €   €   €   €   €   €   €###€ггг€€€€€€€€€€€€€€€€€эээ€ППП€   €   €   €   €   €   €   €   €   €   €!!!€ЁЁЁ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Ѕ                                                   з   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ГГГ€эээ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€&&&€   €   €   €   €   €   €   €   €   €€LLL€€€€€€€€€€€€€€€€€€€€€€€€€ааа€€   €   €   €   €   €   €   €   €   €€ўўў€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€bbb€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  г                                                  г   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ППП€€€€€€€€€€€€€€€€€€€€€€€€€€€€€шшш€%%%€   €   €   €   €   €   €   €   €€€ЉЉЉ€€€€€€€€€€€€€€€€€€€€€€€€€щщщ€€   €   €   €   €   €   €   €   €   €€№№№€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ФФФ€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   и                                                      €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ЙЙЙ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€,,,€   €   €   €   €   €   €   €   €   €\\\€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ввв€<<<€   €   €   €   €   €   €   €   €KKK€ккк€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ђђђ€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                  ¶   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €sss€ччч€€€€€€€€€€€€€€€€€€€€€€€€€€€€€iii€€   €   €   €   €   €   €   €---€ннн€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЋЋЋ€***€   €   €   €   €   €   €   €ЧЧЧ€ююю€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™™€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                  %}   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €NNN€иии€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ёёё€			€€   €   €   €€   €,,,€ввв€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЎЎЎ€@@@€   €   €   €   €   €III€ййй€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ККК€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                  <O   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€“““€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЯЯЯ€   €   €   €   €   €```€ооо€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЂЂЂ€>>>€€   €EEE€жжж€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€???€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                  Р  ь   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ШШШ€ььь€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЈЈЈ€;;;€GGG€ttt€‘‘‘€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€№№№€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                              Д       –   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €жжж€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€SSS€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                      $Ф   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €ДДД€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ШШШ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                      <V   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€јјј€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ґґґ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                      ]  у   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €&&&€ппп€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≈≈≈€%%%€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                  P       µ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €MMM€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЎЎЎ€(((€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                          2o   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€ЕЕЕ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ййй€<<<€€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                          /  ч   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€kkk€ЈЈЈ€ддд€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ллл€≤≤≤€RRR€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                      А   *  µ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €!!!€ЫЫЫ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€№№№€@@@€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                          d  &h  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €===€еее€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ююю€vvv€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                              (#  г   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €(((€ккк€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€шшш€ћћћ€єєє€ЇЇЇ€   €ууу€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ььь€www€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                              N  Ы  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €їїї€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¬¬¬€VVV€)))€€€(((€TTT€¶¶¶€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€шшш€£££€jjj€hhh€ППП€‘‘‘€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ннн€DDD€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                                  !P  
у   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €///€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЏЏЏ€€   €   €   €   €   €   €€•••€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ссс€WWW€€   €   €€(((€xxx€ььь€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ЄЄЄ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   з                                                          L       Q  љ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €$$$€^^^€lll€rrr€€ЗЗЗ€ТТТ€ЬЬЬ€§§§€∞∞∞€]]]€   €   €   €   €   €   €   €   €(((€ЖЖЖ€ААА€ААА€ААА€ААА€ААА€ААА€ААА€ААА€БББ€www€ppp€ppp€ppp€ppp€ppp€ppp€ppp€ppp€ppp€nnn€CCC€   €   €   €   €   €   €€777€ttt€ppp€ppp€ppp€ppp€```€```€```€aaa€ZZZ€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  з                                                                      m  ш   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €€€€€€€€€€€€   €   €   €   €   €   €   €   €€€€€€€€€€€€€€€€€€€€€€€€   €   €   €   €   €   €   €   €€€€€€€€€€€   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ћ                                                                      N)  
—   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  °                                                                          "Б  щ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  )r                                                                  А       V$  
Џ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  L:                                                                              *А   ю   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  к  €                                                                      m       Е  №   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Ѓ      \                                                                       	       5`  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  8i                                                                              ™           Љ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ы  b                                                                                          </  
э   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Ј      m                                                                                   D     %Д   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  /d                                                                                                  2  ∆   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  л  /                                                                                                  €   $G  	н   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   Ф  8  f                                                                                           ;       Й  ~  ь   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  
ч  &>  €                                                                                                           N  Є  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  і  ?                                                                                                      А           =4  	ё   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  
щ  V                                                                                                              J           7[  х   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  њ  J      S                                                                                                                       ,И  ь   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ф  $d                                                                                                                          А           "•  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  Љ  x      А                                                                                                                       b       s  њ  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  н  3O      =                                                                                                                               K       G%  Ѕ  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Я                                                                                                                                              A       ;0     €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Ё  Y      K                                                                                                                                                   59  ”  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  7P                                                                                                                                                      =           >8  ÷  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  1О          q                                                                                                                                                       9       I2  „  ю   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  $¬  '                                                                                                                                                                      8       e  »  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  Џ  <                                                                                                                                                                               <       ]  Є  ь   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ж  0H  €                                                                                                                                                                                   9       З	  О  ш   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  п  *a          J                                                                                                                                                                                   @       Ґ  !k  д   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ф  'r  •      B                                                                                                                                                                                                   €   /@  Ѕ  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  
ц  *k  љ      <                                                                                                                                                                                                   7           D   Ы  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  
ч  4[  €      ;                                                                                                                                                                                                           ?               <R  е   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  и  >>          ;                                                                                                                                                                                                                           ;       j  "±  ю   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  …  Q       D                                                                                                                                                                                                                                       R           8]  ѕ  ъ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ю  
й  х  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ч   °  _      X                                                                                                                                                                                                                                                           f   Е  Џ  €   €   €   €   €   €   €   €   €   €   €   €  €  
я  
”  ц   €   €   €   €   €   €   €   €   €  ш  Ay   o  Ћ  ъ   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ё  'n  щ                                                                                                                                                                                                                                                              j               85  У  а  €   €   €   €   €   €   €   €   €   €  €  ј  =N   f  √  €   €   €   €   €   €   €   €  ю  ƒ  І  O  {  ’  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  Љ  5>          ;                                                                                                                                                                                                                                                                   N           ∆  )7  Ч  ф   €   €   €   €   €   €   €   €   €  €  ¶  ±  @!  l  д   €   €   €   €   €   €   €  ъ  Е          1,  Ъ  э   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  ш  Й  J          N                                                                                                                                                                                                                                                                               D           O  !4  С  н   €   €   €   €   €   €   €   €  €  Ђ  €  и  )/  †  €   €   €   €   €   €   €  я  />          P  )F  Ћ  €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  Ї  (9  X
         А                                                                                                                                                                                                                                                                                           8           ;  6#  &В  м   €   €   €   €   €   €   €   €  +°          O	  .S  а   €   €   €   €   €  €  ≠  Y          с  1  &Д  ш   €   €   €   €   €   €   €   €   €   €   €   €   €   €  €  Џ  -W  9          8                                                                                                                                                                                                                                                                                                               H           l  +t  ÷   €   €   €   €   €   €  €  /В              U  $°  щ   €   €   €   €  	ь  #^  €      <           9>  “  €   €   €   €   €   €   €   €   €   €   €  ю  г  -o  e          P                                                                                                                                                                                                                                                                                                                               S               BM  ®  	й  ч  ю   €   €  €  <L      A           =T  ÷  ъ   €   €   €  –  3!          b           {  )Б  е  ч  €   €   €  €  ы  ц  с  !Ѕ  3h  Ґ          J                                                                                                                                                                                                                                                                                                                                               ™               k  *j  ±  ў  й  п   †          f          Ю  &В  	я  ъ   €  €  $o  K              A           _#  $s  і  	ѕ  
Ћ  ≥  У  /f  `6              K                                                                                                                                                                                                                                                                                                                                                               `                   V#  )P  `  1:                  J           I-  Д  «  р  ї  )                      <               €  €                      А                                                                                                                                                                                                                                                                                                                                                                                   `                       ,                                   B!  L  &N  )                                                  А                                                                                                                                                                                                                                                                                                                                                                                                                                                       E                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ь  ?€€€€€€€€€€€€А  €€€€€€€€€€€ь    ?€€€€€€€€€€р    €€€€€€€€€€ј    €€€€€€€€€€      €€€€€€€€ь      €€€€€€€€р      €€€€€€€€а      €€€€€€€€А       €€€€€€€        ?€€€€€€ю        €€€€€€ь        €€€€€€ш        €€€€€€р         €€€€€€а         €€€€€ј         ?€€€€€А         €€€€€          €€€€ю          €€€€ю          €€€€ь          €€€€ш           €€€€ш           €€€р           ?€€€р           €€€а           €€€а           €€€ј           €€€ј           €€€ј           €€€А           €€€А            €€€             €€€             €€             ?€ю             ?€ю             €ю             €ю             €ь             €ь             €ь             €ь             €ь             €ь             €ь             €ь             €ь             €ь              €ь              €ь              €ь              ь              ь              ь              ь              ь              ?ь              ?ь              ?ь              ?ь              ?ь              ?ю              ?ю              ?ю              ?ю              ?ю              ?€              ?€              ?€              ?€А             ?€А             ?€А             ?€ј             ?€ј             ?€ј             ?€а             ?€а             ?€р             ?€р             ?€р             €ш             €ш             €ь             €ю             €€ю             €€€             €€€            €€€А           €€€ј           €€€а           €€€а           €€€р           €€€ш           €€€ш           €€€ь           €€€ю           €€€€           €€€€А          ?€€€€ј          €€€€а          €€€€р          €€€€€ш         €€€€€ь         €€€€€ю         €€€€€€А        €€€€€€ј        €€€€€€а        ?€€€€€€ш        €€€€€€ь        €€€€€€€€       €€€€€€€€А     €€€€€€€€а `А  €€€€€€€€ш 8ј  €€€€€€€€ю р  €€€€€€€€€А ш €€€€€€€€€€рАю €€€€€€€€€€ьа €€€€€€€€€€€Гра€€€€€€€€€€€€€ь?€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€