@echo off

  if not "%1" == "" goto :init

:help

  echo.
  echo  make clean        - delete all generated files
  echo  make ctan         - create an archive ready for CTAN
  echo  make doc          - typesets documentation
  echo  make localinstall - extract packages
  echo  make tds          - create a TDS-ready archive
  echo  make unpack       - extract packages

  goto :EOF

:init

  setlocal

  rem The name of the package to create should be set here: here, the
  rem example package "testpkg" is in use

  set PACKAGE=siunitx

  rem It is possible to unpack dtx files without needing any extra files, but
  rem some people prefer a separate ins file (or there may be no unpacking
  rem to do). This should be set up here: for a self-extracting dtx the
  rem standard setting is fine.

  set UNPACK=%PACKAGE%.dtx

  rem A list of pdf files to be typeset and included in the archive files
  rem created. The files named here will be typeset (looking for source files
  rem in the order .dtx, .tex, .ltx).

  set INCLUDEPDF=%PACKAGE%

  rem Plain text files to be included in the archives: the .txt extension is
  rem automatically stripped when creating the archive.

  set INCLUDETXT=README

  rem Files to typeset

  rem The settings for cleaning up after compilation are divided into two
  rem parts. AUXFILES are deleted after each (La)TeX run, CLEAN only
  rem when the user calls "make clean"

  set AUXFILES=aux bbl blg cmds dvi glo gls hd idx ilg ind ist log los out tmp toc
  set CLEAN=bib bst cfg cls eps gz ins pdf sty tex txt zip

  rem Sets the order for searching for source files for pdfs

  set PDFSOURCES=dtx

  rem The file types for inclusion in the archive files: note that a CTAN
  rem archive should not contain "unpacked" files. Typeset files and their
  rem sources are not inlcuded here: they are dealt with separately

  set CTANFILES=dtx ins pdf
  set TDSFILES=%CTANFILES% cfg sty 

  rem Locations for building archives

  set CTANROOT=ctan
  set CTANDIR=%CTANROOT%\%PACKAGE%
  set TDSROOT=tds

  cd /d "%~dp0"

:main

  if /i "%1" == "clean"        goto :clean
  if /i "%1" == "ctan"         goto :ctan
  if /i "%1" == "doc"          goto :doc
  if /i "%1" == "help"         goto :help
  if /i "%1" == "localinstall" goto :localinstall
  if /i "%1" == "tds"          goto :tds
  if /i "%1" == "unpack"       goto :unpack

  goto :help

:clean

  echo.
  echo Deleting files

  for %%I in (%CLEAN%) do (
    if exist *.%%I del /q *.%%I
  )

  for %%I in (%TXT%) do (
    if exist %%I del /q %%I
  )

:clean-aux

  for %%I in (%AUXFILES%) do (
    if exist *.%%I del /q *.%%I
  )

  goto :end

:ctan

  call :zip
  if errorlevel 1 goto :EOF

  call :tds
  if errorlevel 1 goto :EOF

  for %%I in (%SOURCES%) do (
    xcopy /q /y %%I "%CTANDIR%\" > nul
  )  
  for %%I in (%CTANFILES%) do (
    xcopy /q /y *.%%I "%CTANDIR%\" > nul
  )
  for %%I in (%INCLUDETXT%) do (
    xcopy /q /y %%I.txt "%CTANDIR%\" > nul
    ren "%CTANDIR%\%%I.txt" %%I
  )

  xcopy /q /y %PACKAGE%.tds.zip "%CTANROOT%\" > nul

  pushd "%CTANROOT%"
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.zip .
  popd
  copy /y "%CTANROOT%\%PACKAGE%.zip" > nul

  rmdir /s /q %CTANROOT%

  goto :end

:doc 

  call :unpack

  set SOURCES=

  for %%I in (%INCLUDEPDF%) do (
    for %%J in (%PDFSOURCES%) do (
      echo.
      if exist %%I.%%J call :typeset-%%J %%I.%%J
    )
  )

  goto :clean-aux

:file2tdsdir

  set TDSDIR=

  if /i "%~x1" == ".cfg" set TDSDIR=tex\latex\%PACKAGE%\config
  if /i "%~x1" == ".dtx" set TDSDIR=source\latex\%PACKAGE%
  if /i "%~x1" == ".ins" set TDSDIR=source\latex\%PACKAGE%
  if /i "%~x1" == ".pdf" set TDSDIR=doc\latex\%PACKAGE%
  if /i "%~x1" == ".sty" set TDSDIR=tex\latex\%PACKAGE%
  if /i "%~x1" == ".tex" set TDSDIR=doc\latex\%PACKAGE%  
  if /i "%~x1" == ".txt" set TDSDIR=doc\latex\%PACKAGE%

  goto :EOF

:localinstall

  call :unpack

  echo.
  echo Installing

  if not defined TEXMFHOME set TEXMFHOME=%USERPROFILE%\texmf

  for %%I in (%TDSFILES%) do (
    call :localinstall-int *.%%I
  )

  goto :end

:localinstall-int

  call :file2tdsdir %1

  if defined TDSDIR (
    xcopy /q /y %1 "%TEXMFHOME%\%TDSDIR%\" > nul
  ) else (
    echo Unknown file type "%~x1"
  )

  goto :EOF

:tds

  call :zip
  if errorlevel 1 goto :EOF

  call :doc
  if errorlevel 1 goto :EOF

  echo.
  echo Creating archive

  for %%I in (%SOURCES%) do (
    call :tds-int %%I
  )
  for %%I in (%TDSFILES%) do (
    call :tds-int *.%%I
  )
  for %%I in (%INCLUDETXT%) do (
    xcopy /q /y %%I.txt "%TDSROOT%\doc\latex\%PACKAGE%\" > nul
    ren "%TDSROOT%\doc\latex\%PACKAGE%\%%I.txt" %%I
  )

  pushd "%TDSROOT%"
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.tds.zip .
  popd
  copy /y "%TDSROOT%\%PACKAGE%.tds.zip" > nul

  rmdir /s /q "%TDSROOT%"

  goto :end

:tds-int

  call :file2tdsdir %1

  if defined TDSDIR (
    xcopy /q /y %1 "%TDSROOT%\%TDSDIR%\" > nul
  ) else (
    echo Unknown file type "%~x1"
  )

  goto :EOF

:typeset-dtx

  echo Typesetting %1

  pdflatex -draftmode -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %1" > nul
  if ERRORLEVEL 1 (
    echo ! Compilation failed
  ) else (
    makeindex -q -s gglo.ist  -o %~n1.gls %~n1.glo > nul
    makeindex -q -s l3doc.ist -o %~n1.ind %~n1.idx > nul
    pdflatex -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %1" > nul
    pdflatex -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %1" > nul 
  )

  goto :EOF

:typeset-tex

  echo Typesetting %1

  set SOURCES=%SOURCES% %1

  pdflatex -interaction=nonstopmode -draftmode %1 > nul
  if ERRORLEVEL 1 (
    echo ! Compilation failed
  )
  pdflatex -interaction=nonstopmode %1 > nul
  pdflatex -interaction=nonstopmode %1 > nul

  goto :EOF

:unpack

  echo.
  echo Unpacking files

  for %%I in (%UNPACK%) do (
    tex %%I > nul
  )

  goto :end

:zip 

  if not defined ZIPFLAG set ZIPFLAG=-r -q -X -ll

  if defined ZIPEXE goto :EOF

  for %%I in (zip.exe "%~dp0zip.exe") do (
    if not defined ZIPEXE if exist %%I set ZIPEXE=%%I
  )

  for %%I in (zip.exe) do (
    if not defined ZIPEXE set ZIPEXE="%%~$PATH:I"
  )

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
  if not "%1" == "" goto :main