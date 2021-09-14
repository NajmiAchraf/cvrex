@ECHO OFF

set year=%date:~-4%

set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%

set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set datetimef=%year%-%month%-%day%

copy main.tex compile.tex
python modify.py "darkpython"

pdflatex --jobname="CV IT.DARK.PY FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.DARK.PY FR %datetimef%" compile.tex

python modify.py "lightpython"

pdflatex --jobname="CV IT.LIGHT.PY FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.LIGHT.PY FR %datetimef%" compile.tex

python modify.py "darkxp"

pdflatex --jobname="CV IT.DARK.XP FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.DARK.XP FR %datetimef%" compile.tex

python modify.py "lightxp"

pdflatex --jobname="CV IT.LIGHT.XP FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.LIGHT.XP FR %datetimef%" compile.tex

python modify.py "vista"

pdflatex --jobname="CV IT.VISTA FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.VISTA FR %datetimef%" compile.tex

python modify.py "black&white"

pdflatex --jobname="CV IT.B&W FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.B&W FR %datetimef%" compile.tex

python modify.py "dark"

pdflatex --jobname="CV IT.DARK FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.DARK FR %datetimef%" compile.tex

python modify.py "light"

pdflatex --jobname="CV IT.LIGHT FR %datetimef%" compile.tex
pdflatex --jobname="CV IT.LIGHT FR %datetimef%" compile.tex

del *.aux *.log *.out main.synctex.gz compile.tex

magick -density 192 "*.B&W*.pdf" -resize 794 -depth 8 -quality 96 it-electronic-black^&white_fr.png
move /Y ./"it-electronic-black&white_fr.png" ../../../previews/

magick -density 192 "*.DARK.PY*.pdf" -resize 794 -depth 8 -quality 96 it-electronic-darkpython_fr.png
move /Y ./"it-electronic-darkpython_fr.png" ../../../previews/

magick -density 192 "*.DARK.XP*.pdf" -resize 794 -depth 8 -quality 96 it-electronic-darkxp_fr.png
move /Y ./"it-electronic-darkxp_fr.png" ../../../previews/

magick -density 192 "*.DARK *.pdf" -resize 794 -depth 8 -quality 96 it-electronic-dark_fr.png
move /Y ./"it-electronic-dark_fr.png" ../../../previews/

magick -density 192 "*.LIGHT.PY*.pdf" -resize 794 -depth 8 -quality 96 it-electronic-lightpython_fr.png
move /Y ./"it-electronic-lightpython_fr.png" ../../../previews/

magick -density 192 "*.LIGHT.XP*.pdf" -resize 794 -depth 8 -quality 96 it-electronic-lightxp_fr.png
move /Y ./"it-electronic-lightxp_fr.png" ../../../previews/

magick -density 192 "*.LIGHT *.pdf" -resize 794 -depth 8 -quality 96 it-electronic-light_fr.png
move /Y ./"it-electronic-light_fr.png" ../../../previews/

magick -density 192 "*.VISTA*.pdf" -resize 794 -depth 8 -quality 96 it-electronic-vista_fr.png
move /Y ./"it-electronic-vista_fr.png" ../../../previews/