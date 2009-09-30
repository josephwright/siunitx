@echo off

setlocal

set AUXFILES=aux bbl blg cmds dvi glo gls hd idx ilg ind ist log los out tmp toc
set CLEAN=bib bst cls eps gz ins cfg pdf sty tex txt zip
set PACKAGE=siunitx
set PDF=%PACKAGE%
set TDSROOT=latex\%PACKAGE%
set TXT=README
set UNPACK=%PACKAGE%.dtx

:loop

  if /i [%1] == [clean]        goto :clean
  if /i [%1] == [ctan]         goto :ctan
  if /i [%1] == [doc]          goto :doc
  if /i [%1] == [localinstall] goto :localinstall
  if /i [%1] == [tds]          goto :tds
  if /i [%1] == [unpack]       goto :unpack

  echo  make clean        - delete all generated files
  echo  make ctan         - create an archive ready for CTAN
  echo  make doc          - typesets documentation
  echo  make localinstall - extract packages
  echo  make tds          - create a TDS-ready archive
  echo  make unpack       - extract packages
  
  goto :end


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

  for %%I in (*.dtx) do (
    xcopy /q /y %%I temp\%PACKAGE%\           > nul
    xcopy /q /y %%I tds\source\%TDSROOT%\      > nul
  )
  for %%I in (%PDF%) do (
    xcopy /q /y %%I.pdf temp\%PACKAGE%\       > nul
    xcopy /q /y %%I.pdf tds\doc\%TDSROOT%\    > nul
  )
  for %%I in (*.ins) do (
    xcopy /q /y %%I temp\%PACKAGE%\           > nul
    xcopy /q /y %%I tds\source\%TDSROOT%\      > nul
  )
  for %%I in (*.sty) do (
    xcopy /q /y %%I tds\tex\%TDSROOT%\        > nul
  )
  for %%I in (%TEX%) do (
    xcopy /q /y %%I.tex temp\%PACKAGE%\       > nul
    xcopy /q /y %%I.tex tds\source\%TDSROOT%\ > nul
  )
  for %%I in (%TXT%) do (
    xcopy /q /y %%I.txt temp\%PACKAGE%\    > nul
    xcopy /q /y %%I.txt tds\doc\%TDSROOT%\ > nul
    ren temp\%PACKAGE%\%%I.txt    %%I
    ren tds\doc\%TDSROOT%\%%I.txt %%I
  )

  pushd tds
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.tds.zip .
  popd
  xcopy /q /y tds\%PACKAGE%.tds.zip temp\ > nul

  pushd temp
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.zip .
  popd
  xcopy /q /y temp\%PACKAGE%.zip > nul

  rmdir /q /s tds
  rmdir /q /s temp
  
  goto :end

:doc

  for %%I in (*.dtx) do (
    call :doc-int %%~nI
  )

  goto :end

:doc-int
  
  echo.
  echo Typesetting %1
  
  pdflatex -interaction=nonstopmode -draftmode "\AtBeginDocument{\DisableImplementation} \input %1.dtx" > nul
  if not ERRORLEVEL 1 (
    makeindex -q -s gglo.ist  -o %1.gls %1.glo > nul
    makeindex -q -s l3doc.ist -o %1.ind %1.idx > nul
    bibtex8 --wolfgang %1.aux > nul
    pdflatex -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %1.dtx" > nul
    pdflatex -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %1.dtx" > nul
  ) else (
    echo ! %1 compilation failed
  )
  
  goto :clean-int


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
    xcopy /q /y *.cfg "%INSTALLROOT%\config\" > nul
  )
  if exist *.cls ( 
    xcopy /q /y *.cls "%INSTALLROOT%\"        > nul
  )
  xcopy /q /y *.sty "%INSTALLROOT%\"          > nul

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

  for %%I in (*.dtx) do (
    xcopy /q /y %%I tds\source\%TDSROOT%\      > nul  
  )
  for %%I in (%PDF%) do (
    xcopy /q /y %%I.pdf tds\doc\%TDSROOT%\     > nul  
  )
  for %%I in (*.ins) do (
    xcopy /q /y %%I tds\source\%TDSROOT%\      > nul  
  )  
  for %%I in (*.sty) do (
    xcopy /q /y %%I tds\tex\%TDSROOT%\         > nul  
  )
  for %%I in (%TEX%) do (
    xcopy /q /y %%I.tex tds\source\%TDSROOT%\  > nul
  )
  for %%I in (%TXT%) do (
    xcopy /q /y %%I.txt tds\doc\%TDSROOT%\ > nul  
    ren tds\doc\%TDSROOT%\%%I.txt %%I
  )

  pushd tds
  %ZIPEXE% %ZIPFLAG% %PACKAGE%.tds.zip .
  popd
  xcopy /q /y tds\%PACKAGE%.tds.zip > nul

  rmdir /q /s tds
  
  goto :end

:unpack

  echo.
  echo Unpacking files

  for %%I in (%UNPACK%) do (
    tex %%I > nul
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