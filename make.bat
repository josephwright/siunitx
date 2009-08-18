@echo off
rem This Windows batch file provides very similar functionality to the
rem Makefile also available here.  Some of the options provided here 
rem require a zip program such as Info-ZIP (http://www.info-zip.org).

setlocal

set AUXFILES=aux cmds dvi glo gls hd idx ilg ind ist log los out tmp toc
set CLEAN=bib cls eps gz ins cfg pdf sty tex txt zip
set DOCEXTRA=\AtBeginDocument{\DisableImplementation}
set INDEXFILE=l3doc
set PATHCOPY=%PATH%
set PDF=si
set TDSROOT=latex\%PACKAGE%
set TEMPLOG=%TEMP%\temp.log
set TEX=
set TXT=README
set UNPACK=siunitx.dtx

:loop

  if /i [%1] == [clean]        goto :clean
  if /i [%1] == [ctan]         goto :ctan
  if /i [%1] == [doc]          goto :doc
  if /i [%1] == [localinstall] goto :localinstall
  if /i [%1] == [tds]          goto :tds
  if /i [%1] == [unpack]       goto :unpack

  goto :help


:clean

  for %%I in (%CLEAN%) do if exist *.%%I del /q *.%%I

:clean-int

  for %%I in (%AUXFILES%) do if exist *.%%I del /q *.%%I

  goto :end

:ctan

  call :zip
  call :doc

  echo.
  echo Creating archive

  if exist temp\*.*  rmdir /q /s temp
  if exist tds\*.*   rmdir /q /s tds

  if exist *.cfg (
    xcopy /q /y *.cfg tds\tex\%TDSROOT%\config  > %TEMPLOG%
  )
  if exist *.cls (
    xcopy /q /y *.cls tds\tex\%TDSROOT%\       > %TEMPLOG%
  )
  xcopy /q /y *.dtx temp\%PACKAGE%\            > %TEMPLOG%
  xcopy /q /y *.dtx tds\source\%TDSROOT%\      > %TEMPLOG%
  for %%I in (%PDF%) do (
    xcopy /q /y %%I.pdf temp\%PACKAGE%\        > %TEMPLOG%
    xcopy /q /y %%I.pdf tds\doc\%TDSROOT%\     > %TEMPLOG%
  )
  xcopy /q /y *.ins temp\%PACKAGE%\            > %TEMPLOG%
  xcopy /q /y *.ins tds\source\%TDSROOT%\      > %TEMPLOG%
  xcopy /q /y *.sty tds\tex\%TDSROOT%\         > %TEMPLOG%
  for %%I in (%TEX%) do (
    xcopy /q /y %%I.tex temp\%PACKAGE%\        > %TEMPLOG%
    xcopy /q /y %%I.tex tds\source\%TDSROOT%\  > %TEMPLOG%
  )
  for %%I in (%TXT%) do (
    xcopy /q /y %%I.txt temp\%PACKAGE%\    > %TEMPLOG%
    xcopy /q /y %%I.txt tds\doc\%TDSROOT%\ > %TEMPLOG%
    ren temp\%PACKAGE%\%%I.txt    %%I
    ren tds\doc\%TDSROOT%\%%I.txt %%I
  )

  pushd tds
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.tds.zip .
  popd
  xcopy /q /y tds\%PACKAGE%.tds.zip temp\ > %TEMPLOG%

  pushd temp
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.zip .
  popd
  xcopy /q /y temp\%PACKAGE%.zip > %TEMPLOG%

  rmdir /q /s tds
  rmdir /q /s temp
  
  goto :end

:doc

  call :unpack

  for %%I in (*.dtx) do (
    call :doc-int %%~nI
  )

  goto :end

:doc-int
  
  echo.
  echo Typesetting %1
  
  pdflatex -interaction=nonstopmode -draftmode "%DOCEXTRA% \input %1.dtx" > %TEMPLOG%
  if not ERRORLEVEL 1 (
    makeindex -q -s gglo.ist        -o %1.gls %1.glo > %TEMPLOG%
    makeindex -q -s %INDEXFILE%.ist -o %1.ind %1.idx > %TEMPLOG%
    pdflatex -interaction=nonstopmode "%DOCEXTRA% \input %1.dtx" > %TEMPLOG%
    pdflatex -interaction=nonstopmode "%DOCEXTRA% \input %1.dtx" > %TEMPLOG%
  ) else (
    echo ! %1 compilation failed
  )
  
  goto :clean-int

:help

  echo  make clean        - delete all generated files
  echo  make ctan         - create an archive ready for CTAN
  echo  make doc          - typesets documentation
  echo  make localinstall - extract packages
  echo  make tds          - create a TDS-ready archive
  echo  make unpack       - extract packages
  
  goto :end

:localinstall

  call :unpack

  echo.
  echo Installing files

  if not defined TEXMFHOME (
    set TEXMFHOME=%USERPROFILE%\texmf
  )
  set INSTALLROOT=%TEXMFHOME%\%TDSROOT%

  if exist "%INSTALLROOT%\*.*" rmdir /q /s "%INSTALLROOT%"

  if exist *.cfg (
    xcopy /q /y *.cfg "%INSTALLROOT%\config\" > %TEMPLOG%
  )
  if exist *.cls ( 
    xcopy /q /y *.cls "%INSTALLROOT%\"        > %TEMPLOG%
  )
  xcopy /q /y *.sty "%INSTALLROOT%\"          > %TEMPLOG%

  goto :clean-int

:no-dtx
  
  echo.
  echo No such file %1.dtx

  goto :end
  
:tds

  call :zip
  call :doc

  echo.
  echo Creating archive

  if exist tds\*.*  rmdir /q /s tds

  if exist *.cfg (
    xcopy /q /y *.cfg tds\tex\%TDSROOT%\config\ > %TEMPLOG%
  )
  if exist *.cls (
    xcopy /q /y *.cls tds\tex\%TDSROOT%\        > %TEMPLOG%    
  )
  xcopy /q /y *.dtx tds\source\%TDSROOT%\       > %TEMPLOG%    
  for %%I in (%PDF%) do (
    xcopy /q /y %%I.pdf tds\doc\%TDSROOT%\      > %TEMPLOG%  
  )
  xcopy /q /y *.ins tds\source\%TDSROOT%\       > %TEMPLOG%  
  xcopy /q /y *.sty tds\tex\%TDSROOT%\          > %TEMPLOG%  
  for %%I in (%TEX%) do (
    xcopy /q /y %%I.tex tds\source\%TDSROOT%\   > %TEMPLOG%
  )
  for %%I in (%TXT%) do (
    xcopy /q /y %%I.txt tds\doc\%TDSROOT%\ > %TEMPLOG%  
    ren tds\doc\%TDSROOT%\%%I.txt %%I
  )

  pushd tds
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.tds.zip .
  popd
  xcopy /q /y tds\%PACKAGE%.tds.zip > %TEMPLOG%

  rmdir /q /s tds
  
  goto :end

:unpack

  echo.
  echo Unpacking files

  for %%I in (%UNPACK%) do (
    tex %%I > %TEMPLOG%
  )

  goto :clean-int

:zip 

  set PATHCOPY=%PATH%

:zip-loop

  if defined ZIPEXE goto :EOF

  for /f "delims=; tokens=1,2*" %%I in ("%PATHCOPY%") do (
    if exist "%%I\zip.exe" (
      set ZIPEXE=zip
      set ZIPFLAG=-ll -q -r -X
    )
    set PATHCOPY=%%J;%%K
  )
  if not "%PATHCOPY%" == ";" goto :zip-loop
  
  if not defined ZIPEXE (
    echo.
    echo This procedure requires a zip program,
    echo but one could not be found.
    echo
    echo If you do have a command-line zip program installed,
    echo set ZIPEXE to the full executable path and ZIPFLAG to the
    echo appropriate flag to create an archive.
    echo.
  )

  goto :EOF

:end

  shift
  if not [%1] == [] goto :loop