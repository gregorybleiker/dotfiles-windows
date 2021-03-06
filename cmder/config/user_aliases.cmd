;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

;= rem Custom settings

;= rem Find
fnd="C:\cmder\vendor\git-for-windows\usr\bin\find.exe"

;= rem Directories
l=ls -lah --color $*

;= rem Python
;= rem python=winpty python.exe
pyclean="C:\cmder\vendor\git-for-windows\usr\bin\find.exe" ./ \( -name "__pycache__" -o -name "*.pyc" -o -name "*.pyo" \) -prune -exec rm -rf {} +
virtualenv=virtualenv.exe $*
mkvirtualenv=mkvirtualenv.bat $*
rmvirtualenv=rmvirtualenv.bat $*
lsvirtualenv=lsvirtualenv.bat
workon=workon.bat $*
deactivate=deactivate.bat

;= rem Sublime Text
subl="E:\Programs\Sublime Text 3\subl.exe" $*

;= rem Git
gs=git status $*
ga=git add $*
gb=git branch $*
gc=git commit $*
gd=git diff $*
go=git checkout $*
gk=gitk --all $*
gx=gitx --all $*
