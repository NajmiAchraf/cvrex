<h1 align="center">
  CV ReX
  <br />
  <img alt="cvrex icon" src="../../previews/cvrex.svg" height="300px" />
  <br />
  LaTeX Resume
</h1>

<div align="center">
  <a href="http://www.repostatus.org/#active" title="Project Status: Active – The project has reached a stable, usable state and is being actively developed.">
    <img src="http://www.repostatus.org/badges/latest/active.svg" alt="Project Status: Active" />
  </a>
  <a href="https://gitlicense.com/license/NajmiAchraf/cvrex">
    <img src="https://gitlicense.com/badge/NajmiAchraf/cvrex" alt="GitLicense" />
  </a>  
</div>


**These images are in the CV are pesonal.**
Please replace them with your own photos and logos if you use this template!


## IT Hydrogeology French

<table width="100%" margin-left="auto" margin-right="auto">
  <tr>
    <th>IT Hydrogeology darkpython FR</th>
    <th>IT Hydrogeology darkxp FR</th>
    <th>IT Hydrogeology black&white FR</th>
    <th>IT Hydrogeology dark FR</th>
  </tr>
  <tr>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-darkpython_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-darkxp_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-black&white_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-dark_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
  </tr>
</table>
</div>

<table width="100%" margin-left="auto" margin-right="auto">
  <tr>
    <th>IT Hydrogeology lighpython FR</th>
    <th>IT Hydrogeology lightxp FR</th>
    <th>IT Hydrogeology vista FR</th>
    <th>IT Hydrogeology light FR</th>
  </tr>
  <tr>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-lightpython_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-lightxp_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-vista_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-light_fr.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
  </tr>
</table>
</div>


## IT Hydrogeology English

<table width="100%" margin-left="auto" margin-right="auto">
  <tr>
    <th>IT Hydrogeology darkpythonEN</th>
    <th>IT Hydrogeology darkxpEN</th>
    <th>IT Hydrogeology black&whiteEN</th>
    <th>IT Hydrogeology darkEN</th>
  </tr>
  <tr>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-darkpython_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-darkxp_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-black&white_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-dark_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
  </tr>
</table>
</div>

<table width="100%" margin-left="auto" margin-right="auto">
  <tr>
    <th>IT Hydrogeology lighpythonEN</th>
    <th>IT Hydrogeology lightxpEN</th>
    <th>IT Hydrogeology vistaEN</th>
    <th>IT Hydrogeology lightEN</th>
  </tr>
  <tr>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-lightpython_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-lightxp_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-vista_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
    <td width="25%">
      <img src="../../previews/it-hydrogeology-light_en.png" 
        alt="IT Hydrogeology CV example preview" />
    </td>
  </tr>
</table>
</div>

## Usage

This is how to invoke the different color themes

```latex
\documentclass[darkxp]{hipstercv}
% insert whatever style you want to use where it says 'darkxp' now:
% available options are: darkpython, lightpython, darkxp, lightxp, vista, black&white, dark, light
```
## How to build?

The following guide just briefly describes the requirements and build procedure as there are many ways to install a LaTeX distribution on various OS.

* ****Build Procedure****
	* ***Downloading and Editing***
		* Clone or download this project. 
		* Change to a template folder, which contains a `main.tex` file do.
		* Edit the `main.tex` according to your CV credentials.

	* ***Terminal build method***
		* Run `pdflatex main.tex` (build/compile).
		* The `main.pdf` file should show on output.

	* *****Additional build procedure for windows users and for forkers*****
		* ***The following two methods needs more programs to install :***

			* [`*` Python](<https://www.python.org/downloads/>) is to create a copy of `main.tex` named `compile.tex` and modify it and build from it pdf(s) and image(s).
			* [`**` ImageMagick](<https://imagemagick.org/script/download.php>) & [`**` Ghostscript](<https://www.ghostscript.com/download.html>) to convert pdf(s) to image(s).

		1. ***Batchfile build method***
			* Execute `compile_"folder container name".bat` (build/compile).
			* The `CV HIGH."theme name" "language" "date".pdf` file(s) should show on output.
			* The converted image(s) will be moved to `previews` folder.

		2. ***Python build method***
			* Execute `build.py` (build/compile).
			* The `CV HIGH."theme name" "language" "date".pdf` file(s) should show on output.
			* The converted image(s) will be moved to `previews` folder.

`*` recommended for all users

`**` additional for forkers

## License

MIT License

Copyright (c) 2021 ACHRAF NAJMI

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files CV Rex, to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
