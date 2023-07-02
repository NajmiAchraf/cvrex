@ECHO OFF

set year=%date:~-4%

set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%

set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set datetimef=%year%-%month%-%day%

copy main.tex compile.tex
python build.py "darkpython"

pdflatex -quiet --jobname="CV HIGH.DARK.PY EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.DARK.PY EN %datetimef%" compile.tex

python build.py "lightpython"

pdflatex -quiet --jobname="CV HIGH.LIGHT.PY EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.LIGHT.PY EN %datetimef%" compile.tex

python build.py "darkxp"

pdflatex -quiet --jobname="CV HIGH.DARK.XP EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.DARK.XP EN %datetimef%" compile.tex

python build.py "lightxp"

pdflatex -quiet --jobname="CV HIGH.LIGHT.XP EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.LIGHT.XP EN %datetimef%" compile.tex

python build.py "vista"

pdflatex -quiet --jobname="CV HIGH.VISTA EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.VISTA EN %datetimef%" compile.tex

python build.py "black&white"

pdflatex -quiet --jobname="CV HIGH.B&W EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.B&W EN %datetimef%" compile.tex

python build.py "dark"

pdflatex -quiet --jobname="CV HIGH.DARK EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.DARK EN %datetimef%" compile.tex

python build.py "light"

pdflatex -quiet --jobname="CV HIGH.LIGHT EN %datetimef%" compile.tex
pdflatex -quiet --jobname="CV HIGH.LIGHT EN %datetimef%" compile.tex

del *.aux *.log *.out main.synctex.gz compile.tex

magick -density 192 "*.B&W*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-black^&white_en.png
move /Y ./"it-hydrogeology-black&white_en.png" ../../../previews/

magick -density 192 "*.DARK.PY*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-darkpython_en.png
move /Y ./"it-hydrogeology-darkpython_en.png" ../../../previews/

magick -density 192 "*.DARK.XP*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-darkxp_en.png
move /Y ./"it-hydrogeology-darkxp_en.png" ../../../previews/

magick -density 192 "*.DARK *.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-dark_en.png
move /Y ./"it-hydrogeology-dark_en.png" ../../../previews/

magick -density 192 "*.LIGHT.PY*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-lightpython_en.png
move /Y ./"it-hydrogeology-lightpython_en.png" ../../../previews/

magick -density 192 "*.LIGHT.XP*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-lightxp_en.png
move /Y ./"it-hydrogeology-lightxp_en.png" ../../../previews/

magick -density 192 "*.LIGHT *.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-light_en.png
move /Y ./"it-hydrogeology-light_en.png" ../../../previews/

magick -density 192 "*.VISTA*.pdf" -resize 826 -depth 8 -quality 96 it-hydrogeology-vista_en.png
move /Y ./"it-hydrogeology-vista_en.png" ../../../previews/