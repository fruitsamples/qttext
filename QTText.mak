# Microsoft Developer Studio Generated NMAKE File, Based on QTText.dsp
!IF "$(CFG)" == ""
CFG=QTText - Win32 Release
!MESSAGE No configuration specified. Defaulting to QTText - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "QTText - Win32 Release" && "$(CFG)" != "QTText - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "QTText.mak" CFG="QTText - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "QTText - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "QTText - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "QTText - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\.\Release
TargetName=QTText
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OutDir)\resource.frk\$(TargetName)" "$(OUTDIR)\QTText.exe"

!ELSE 

ALL : "$(OutDir)\resource.frk\$(TargetName)" "$(OUTDIR)\QTText.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\ComApplication.obj"
	-@erase "$(INTDIR)\ComFramework.obj"
	-@erase "$(INTDIR)\QTText.obj"
	-@erase "$(INTDIR)\QTText.res"
	-@erase "$(INTDIR)\QTUtilities.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\WinFramework.obj"
	-@erase "$(OUTDIR)\QTText.exe"
	-@erase "$(OUTDIR)\QTText.ilk"
	-@erase "$(OutDir)\resource.frk\$(TargetName)"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\..\QTDevWin\CIncludes" /I\
 ".\Common Files" /I ".\Application Files" /I "." /D "WIN32" /D "NDEBUG" /D\
 "_WINDOWS" /Fp"$(INTDIR)\QTText.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD\
 /c 
CPP_OBJS=.\Release/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\QTText.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\QTText.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\QTDevWin\Libraries\qtmlclient.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows\
 /incremental:yes /pdb:"$(OUTDIR)\QTText.pdb" /machine:I386\
 /out:"$(OUTDIR)\QTText.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ComApplication.obj" \
	"$(INTDIR)\ComFramework.obj" \
	"$(INTDIR)\QTText.obj" \
	"$(INTDIR)\QTText.res" \
	"$(INTDIR)\QTUtilities.obj" \
	"$(INTDIR)\WinFramework.obj"

"$(OUTDIR)\QTText.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\.\Debug
TargetName=QTText
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OutDir)\resource.frk\$(TargetName)" "$(OUTDIR)\QTText.exe"

!ELSE 

ALL : "$(OutDir)\resource.frk\$(TargetName)" "$(OUTDIR)\QTText.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\ComApplication.obj"
	-@erase "$(INTDIR)\ComFramework.obj"
	-@erase "$(INTDIR)\QTText.obj"
	-@erase "$(INTDIR)\QTText.res"
	-@erase "$(INTDIR)\QTUtilities.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\WinFramework.obj"
	-@erase "$(OUTDIR)\QTText.exe"
	-@erase "$(OUTDIR)\QTText.ilk"
	-@erase "$(OUTDIR)\QTText.pdb"
	-@erase "$(OutDir)\resource.frk\$(TargetName)"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "..\..\QTDevWin\CIncludes" /I\
 ".\Common Files" /I ".\Application Files" /I "." /D "WIN32" /D "_DEBUG" /D\
 "_WINDOWS" /Fp"$(INTDIR)\QTText.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD\
 /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\QTText.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\QTText.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\QTDevWin\Libraries\qtmlclient.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows\
 /incremental:yes /pdb:"$(OUTDIR)\QTText.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)\QTText.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ComApplication.obj" \
	"$(INTDIR)\ComFramework.obj" \
	"$(INTDIR)\QTText.obj" \
	"$(INTDIR)\QTText.res" \
	"$(INTDIR)\QTUtilities.obj" \
	"$(INTDIR)\WinFramework.obj"

"$(OUTDIR)\QTText.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "QTText - Win32 Release" || "$(CFG)" == "QTText - Win32 Debug"
SOURCE=".\Application Files\ComApplication.c"

!IF  "$(CFG)" == "QTText - Win32 Release"

DEP_CPP_COMAP=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\scrap.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComApplication.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\Common Files\WinFramework.h"\
	".\common files\winprefix.h"\
	".\QTText.h"\
	

"$(INTDIR)\ComApplication.obj" : $(SOURCE) $(DEP_CPP_COMAP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

DEP_CPP_COMAP=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\scrap.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComApplication.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\Common Files\WinFramework.h"\
	".\common files\winprefix.h"\
	".\QTText.h"\
	

"$(INTDIR)\ComApplication.obj" : $(SOURCE) $(DEP_CPP_COMAP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=".\Common Files\ComFramework.c"

!IF  "$(CFG)" == "QTText - Win32 Release"

DEP_CPP_COMFR=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\common files\winprefix.h"\
	

"$(INTDIR)\ComFramework.obj" : $(SOURCE) $(DEP_CPP_COMFR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

DEP_CPP_COMFR=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\common files\winprefix.h"\
	

"$(INTDIR)\ComFramework.obj" : $(SOURCE) $(DEP_CPP_COMFR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\QTText.c

!IF  "$(CFG)" == "QTText - Win32 Release"

DEP_CPP_QTTEX=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\scrap.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComApplication.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\Common Files\WinFramework.h"\
	".\common files\winprefix.h"\
	".\QTText.h"\
	

"$(INTDIR)\QTText.obj" : $(SOURCE) $(DEP_CPP_QTTEX) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

DEP_CPP_QTTEX=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\scrap.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComApplication.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\Common Files\WinFramework.h"\
	".\common files\winprefix.h"\
	".\QTText.h"\
	

"$(INTDIR)\QTText.obj" : $(SOURCE) $(DEP_CPP_QTTEX) "$(INTDIR)"


!ENDIF 

SOURCE=.\QTText.r

!IF  "$(CFG)" == "QTText - Win32 Release"

OutDir=.\.\Release
TargetPath=.\Release\QTText.exe
TargetName=QTText
InputPath=.\QTText.r

"$(OutDir)\resource.frk\$(TargetName)"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\QTDevWin\Tools\Rez -i ..\..\QTDevWin\RIncludes -o $(TargetPath)\
     $(InputPath)

!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

OutDir=.\.\Debug
TargetPath=.\Debug\QTText.exe
TargetName=QTText
InputPath=.\QTText.r

"$(OutDir)\resource.frk\$(TargetName)"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\QTDevWin\Tools\Rez -i ..\..\QTDevWin\RIncludes -o $(TargetPath)\
     $(InputPath)

!ENDIF 

SOURCE=".\Application Files\QTText.rc"
DEP_RSC_QTTEXT=\
	".\Application Files\ComResource.h"\
	".\Application Files\Movie.ico"\
	".\Application Files\QTText.ico"\
	

!IF  "$(CFG)" == "QTText - Win32 Release"


"$(INTDIR)\QTText.res" : $(SOURCE) $(DEP_RSC_QTTEXT) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\QTText.res" /i "Application Files" /i\
 ".\Application Files" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"


"$(INTDIR)\QTText.res" : $(SOURCE) $(DEP_RSC_QTTEXT) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\QTText.res" /i "Application Files" /i\
 ".\Application Files" /d "_DEBUG" $(SOURCE)


!ENDIF 

SOURCE=".\Common Files\QTUtilities.c"

!IF  "$(CFG)" == "QTText - Win32 Release"

DEP_CPP_QTUTI=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Common Files\QTUtilities.h"\
	

"$(INTDIR)\QTUtilities.obj" : $(SOURCE) $(DEP_CPP_QTUTI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

DEP_CPP_QTUTI=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Common Files\QTUtilities.h"\
	

"$(INTDIR)\QTUtilities.obj" : $(SOURCE) $(DEP_CPP_QTUTI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=".\Common Files\WinFramework.c"

!IF  "$(CFG)" == "QTText - Win32 Release"

DEP_CPP_WINFR=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\scrap.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\Common Files\WinFramework.h"\
	".\common files\winprefix.h"\
	

"$(INTDIR)\WinFramework.obj" : $(SOURCE) $(DEP_CPP_WINFR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "QTText - Win32 Debug"

DEP_CPP_WINFR=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appearance.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controldefinitions.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\filetypesandcreators.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fixmath.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\gestalt.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\intlresources.h"\
	"..\..\qtdevwin\cincludes\lists.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\machelp.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\mediahandlers.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\moviesformat.h"\
	"..\..\qtdevwin\cincludes\navigation.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\numberformatting.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\printing.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtml.h"\
	"..\..\qtdevwin\cincludes\qtsmovie.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\quicktimevr.h"\
	"..\..\qtdevwin\cincludes\resources.h"\
	"..\..\qtdevwin\cincludes\scrap.h"\
	"..\..\qtdevwin\cincludes\script.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\stringcompare.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\textutils.h"\
	"..\..\qtdevwin\cincludes\translation.h"\
	"..\..\qtdevwin\cincludes\translationextensions.h"\
	"..\..\qtdevwin\cincludes\traps.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	".\Application Files\ComResource.h"\
	".\common files\comframework.h"\
	".\Common Files\QTUtilities.h"\
	".\Common Files\WinFramework.h"\
	".\common files\winprefix.h"\
	

"$(INTDIR)\WinFramework.obj" : $(SOURCE) $(DEP_CPP_WINFR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

