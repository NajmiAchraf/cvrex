@ECHO OFF

set year=%date:~-4%

set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%

set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set datetimef=%year%-%month%-%day%

copy main.tex compile.tex
python build.py "darkpython"

pdflatex -quiet --jobname="CV IT.DARK.PY EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.DARK.PY EN %datetimef%" compile.tex

python build.py "lightpython"

pdflatex -quiet --jobname="CV IT.LIGHT.PY EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.LIGHT.PY EN %datetimef%" compile.tex

python build.py "darkxp"

pdflatex -quiet --jobname="CV IT.DARK.XP EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.DARK.XP EN %datetimef%" compile.tex

python build.py "lightxp"

pdflatex -quiet --jobname="CV IT.LIGHT.XP EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.LIGHT.XP EN %datetimef%" compile.tex

python build.py "vista"

pdflatex -quiet --jobname="CV IT.VISTA EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.VISTA EN %datetimef%" compile.tex

python build.py "black&white"

pdflatex -quiet --jobname="CV IT.B&W EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.B&W EN %datetimef%" compile.tex

python build.py "dark"

pdflatex -quiet --jobname="CV IT.DARK EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.DARK EN %datetimef%" compile.tex

python build.py "light"

pdflatex -quiet --jobname="CV IT.LIGHT EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV IT.LIGHT EN %datetimef%" compile.tex

del *.aux *.log *.out main.synctex.gz compile.tex

magick -density 192 "*.B&W*.pdf" -resize 826 -depth 8 -quality 96 it-electronic-black^&white_en.png
move /Y ./"it-electronic-black&white_en.png" ../../../previews/

magick -density 192 "*.DARK.PY*.pdf" -resize 826 -depth 8 -quality 96 it-electronic-darkpython_en.png
move /Y ./"it-electronic-darkpython_en.png" ../../../previews/

magick -density 192 "*.DARK.XP*.pdf" -resize 826 -depth 8 -quality 96 it-electronic-darkxp_en.png
move /Y ./"it-electronic-darkxp_en.png" ../../../previews/

magick -density 192 "*.DARK *.pdf" -resize 826 -depth 8 -quality 96 it-electronic-dark_en.png
move /Y ./"it-electronic-dark_en.png" ../../../previews/

magick -density 192 "*.LIGHT.PY*.pdf" -resize 826 -depth 8 -quality 96 it-electronic-lightpython_en.png
move /Y ./"it-electronic-lightpython_en.png" ../../../previews/

magick -density 192 "*.LIGHT.XP*.pdf" -resize 826 -depth 8 -quality 96 it-electronic-lightxp_en.png
move /Y ./"it-electronic-lightxp_en.png" ../../../previews/

magick -density 192 "*.LIGHT *.pdf" -resize 826 -depth 8 -quality 96 it-electronic-light_en.png
move /Y ./"it-electronic-light_en.png" ../../../previews/

magick -density 192 "*.VISTA*.pdf" -resize 826 -depth 8 -quality 96 it-electronic-vista_en.png
move /Y ./"it-electronic-vista_en.png" ../../../previews/