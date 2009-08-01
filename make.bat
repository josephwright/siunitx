@echo off

setlocal

set AUXFILES=aux cmds dvi glo gls hd idx ilg ind ist log los out tmp toc
set CLEAN=bib bst cls eps gz ins cfg pdf sty tex txt zip
set NEXT=end
set SOURCE=siunitx
set TDSNAME=siunitx
set TIDY=eps gz ins cfg sty tex txt

:loop

  if /i [%1] == [checkdoc]     goto :checkdoc
  if /i [%1] == [clean]        goto :clean
  if /i [%1] == [ctan]         goto :ctan
  if /i [%1] == [doc]          goto :doc
  if /i [%1] == [localinstall] goto :localinstall
  if /i [%1] == [tds]          goto :tds
  if /i [%1] == [tidy]         goto :tidy
  if /i [%1] == [unpack]       goto :unpack

  goto :help
  
:checkdoc

  echo.
  echo Checking documentation
  
  for %%I in (%SOURCE%) do (
    echo  %%~nI
    pdflatex -interaction=nonstopmode -draftmode "\AtBeginDocument{\EnableImplementation} \input %%I.dtx" > temp.log
    pause
    for /f "delims=:,tokens=3*" %%J in (temp.log) do (
      if "%%J" == " Package doc Error" (
        echo    %%K
      )
    )
  )

  goto :end

:clean

  for %%I in (%CLEAN%) do if exist *.%%I del /q *.%%I

:clean-int

  for %%I in (%AUXFILES%) do if exist *.%%I del /q *.%%I
    
  goto :end
  
:ctan

  set NEXT=ctan
  if not defined ZIP goto :zip
  
  call make tds
  
  echo.
  echo Making CTAN archive
  
  if exist temp\*.* del /q /s temp\*.* > temp.log
  
  xcopy /y *.dtx temp\%TDSNAME%\ > temp.log
  for %%I in (%SOURCE%) do (
    copy /y %%I.pdf temp\%TDSNAME%\ > temp.log
  )
  copy /y *.txt temp\%TDSNAME%\ > temp.log
  pushd temp\%TDSNAME%
  ren README.txt README
  popd
  copy /y *.ins temp\%TDSNAME%\ > temp.log
  copy /y %TDSNAME%.tds.zip temp\ > temp.log
  
  cd temp
  "%ZIP%" %ZIPFLAG% %TDSNAME%.zip > temp.log
  cd ..
  copy temp\%TDSNAME%.zip > temp.log
  rmdir /q /s temp
  
  goto :clean-int
  
:doc

  echo.
  echo Typesetting
  
  for %%I in (%SOURCE%) do (
    pdflatex -quiet -interaction=nonstopmode -draftmode "\AtBeginDocument{\DisableImplementation} \input %%I.dtx"
    makeindex -q -s gglo.ist -o %%~nI.gls %%~nI.glo > temp.log
    makeindex -q -s gind.ist -o %%~nI.ind %%~nI.idx > temp.log
    pdflatex -quiet -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %%I.dtx"
    pdflatex -quiet -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input %%I.dtx"
  )
  
  goto :clean-int
   
:help

  echo.
  echo  make clean        - delete all generated files
  echo  make ctan         - create an archive ready for CTAN
  echo  make localinstall - extract packages
  echo  make tds          - create a TDS-ready archive
  echo  make tidy         - tidy files after CTAN submission
  echo  make unpack       - extract packages
  echo.
  
  goto :end
  
:localinstall

  if not defined TEXMFHOME (
    set TEXMFHOME=%USERPROFILE%\texmf
    echo.
    echo TEXMFHOME variable was not set:
    echo using default value %USERPROFILE%\texmf
  )
  
  SET LTEXMF=%TEXMFHOME%\tex\latex\%TDSNAME%
  
  call make unpack
  
  echo.
  echo Installing files
  
  if exist "%LTEXMF%\*.*" del /q "%LTEXMF%\*.*"
  xcopy /y *.sty "%LTEXMF%\*.*" > temp.log
  copy /y  *.cls "%LTEXMF%\*.*" > temp.log
  xcopy /y *.cfg "%LTEXMF%\config\*.*" > temp.log
  
  goto :clean-int
  
:tds

  set NEXT=tds
  if not defined ZIP goto :zip

  if exist tds\*.* del /q /s tds\*.* > temp.log
  
  call make unpack
  call make doc
  
  echo.
  echo Making TDS structure 
  
  xcopy /y *.sty tds\tex\latex\%TDSNAME%\ > temp.log
  copy /y *.cls tds\tex\latex\%TDSNAME%\ > temp.log
  xcopy /y *.cfg tds\tex\latex\%TDSNAME%\config\ > temp.log
  
  xcopy /y *.bst tds\bibtex\bst\%TDSNAME%\ > temp.log
  
  xcopy /y *.dtx tds\source\latex\%TDSNAME%\ > temp.log
  copy /y *.ins tds\source\latex\%TDSNAME%\ > temp.log
    
  xcopy /y *.txt tds\doc\latex\%TDSNAME%\ > temp.log
  pushd tds\doc\latex\%TDSNAME%
  ren README.txt README
  popd
  for %%I in (%SOURCE%) do (
    copy /y %%I.pdf tds\doc\latex\%TDSNAME%\ > temp.log
  )
  copy /y *.tex tds\doc\latex\%TDSNAME%\ > temp.log
 
  cd tds
  "%ZIP%" %ZIPFLAG% %TDSNAME%.tds.zip > temp.log
  cd ..
  copy /y tds\%TDSNAME%.tds.zip > temp.log
  
  rmdir /q /s tds
  
  goto :clean-int
  
:tidy 

  for %%I in (%TIDY%) do if exist *.%%I del /q *.%%I
  
  goto :clean-int
  
:unpack
  
  echo.
  echo Unpacking files
  
  for %%I in (%SOURCE%) do (
    tex -quiet %%I.dtx
  )
  del /q *.log
  
  goto :end
  
 
:zip  

  set PATHCOPY=%PATH%
  
:zip-loop
  
  for /f "delims=; tokens=1,2*" %%I in ("%PATHCOPY%") do (
    if exist %%I\7z.exe (
      set ZIP=7z
      set ZIPFLAG=a
    )
    set PATHCOPY=%%J;%%K
  )
  
  if defined ZIP goto :%NEXT%

  if not "%PATHCOPY%"==";" goto :zip-loop
  
  if exist %ProgramFiles%\7-zip\7z.exe (
    set ZIP=%ProgramFiles%\7-zip\7z.exe
    set ZIPFLAG=a
  )
  
  if defined ZIP (
    goto :%NEXT%
  ) else (
    echo.
    echo This procedure requires a zip program,
    echo but one could not be found.
    echo
    echo If you do have a command-line zip program installed,
    echo set ZIP to the full executable path and ZIPFLAG to the
    echo appropriate flag to create an archive.
    echo.
    goto :end
  )
  
:end

  shift
  if not "%1" == "" goto :loop
  
  endlocal
