@ECHO OFF

set year=%date:~-4%

set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%

set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set datetimef=%year%-%month%-%day%

pdflatex --jobname="CV IT.DEV.PY EN %datetimef%" main.tex

del *.aux *.log *.out main.synctex.gz

magick -density 192 "*.DEV*.pdf" -resize 794 -depth 8 -quality 96 it-dev_en.png