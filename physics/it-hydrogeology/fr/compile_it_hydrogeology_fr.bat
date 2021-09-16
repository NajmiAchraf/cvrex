@ECHO OFF

set year=%date:~-4%

set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%

set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set datetimef=%year%-%month%-%day%

copy main.tex compile.tex
python modify.py "darkpython"

pdflatex --jobname="CV HIGH.DARK.PY FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.DARK.PY FR %datetimef%" compile.tex

python modify.py "lightpython"

pdflatex --jobname="CV HIGH.LIGHT.PY FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.LIGHT.PY FR %datetimef%" compile.tex

python modify.py "darkxp"

pdflatex --jobname="CV HIGH.DARK.XP FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.DARK.XP FR %datetimef%" compile.tex

python modify.py "lightxp"

pdflatex --jobname="CV HIGH.LIGHT.XP FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.LIGHT.XP FR %datetimef%" compile.tex

python modify.py "vista"

pdflatex --jobname="CV HIGH.VISTA FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.VISTA FR %datetimef%" compile.tex

python modify.py "black&white"

pdflatex --jobname="CV HIGH.B&W FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.B&W FR %datetimef%" compile.tex

python modify.py "dark"

pdflatex --jobname="CV HIGH.DARK FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.DARK FR %datetimef%" compile.tex

python modify.py "light"

pdflatex --jobname="CV HIGH.LIGHT FR %datetimef%" compile.tex
pdflatex --jobname="CV HIGH.LIGHT FR %datetimef%" compile.tex

del *.aux *.log *.out main.synctex.gz compile.tex

magick -density 192 "*.B&W*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-black^&white_fr.png
move /Y ./"it-hydrogeology-black&white_fr.png" ../../../previews/

magick -density 192 "*.DARK.PY*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-darkpython_fr.png
move /Y ./"it-hydrogeology-darkpython_fr.png" ../../../previews/

magick -density 192 "*.DARK.XP*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-darkxp_fr.png
move /Y ./"it-hydrogeology-darkxp_fr.png" ../../../previews/

magick -density 192 "*.DARK *.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-dark_fr.png
move /Y ./"it-hydrogeology-dark_fr.png" ../../../previews/

magick -density 192 "*.LIGHT.PY*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-lightpython_fr.png
move /Y ./"it-hydrogeology-lightpython_fr.png" ../../../previews/

magick -density 192 "*.LIGHT.XP*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-lightxp_fr.png
move /Y ./"it-hydrogeology-lightxp_fr.png" ../../../previews/

magick -density 192 "*.LIGHT *.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-light_fr.png
move /Y ./"it-hydrogeology-light_fr.png" ../../../previews/

magick -density 192 "*.VISTA*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-vista_fr.png
move /Y ./"it-hydrogeology-vista_fr.png" ../../../previews/