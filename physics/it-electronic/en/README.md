# IT Electronic

This IT Hydrogeology cv contains the following components:

* Piechart
* Bubbles
* Barchart for single category data
* Timeline for your cv history

All components can be easily customized/extended. See the parameter description on the various newcommand/newenvironment entries.

See the main.pdf file for example output.

The build does only relie on pdflatex and the packages, including the dependencies listet in the main readme.
**These images are in the CV are pesonal.**
Please replace them with your own photos and logos if you use this template!


<table width="100%" margin-left="auto" margin-right="auto">
  <tr>
    <th>IT Electronic darkpython EN</th>
    <th>IT Electronic darkxp EN</th>
    <th>IT Electronic black&white EN</th>
    <th>IT Electronic dark EN</th>
  </tr>
  <tr>
    <td width="25%">
      <img src="../../../previews/it-electronic-darkpython_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
    <td width="25%">
      <img src="../../../previews/it-electronic-darkxp_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
    <td width="25%">
      <img src="../../../previews/it-electronic-black&white_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
    <td width="25%">
      <img src="../../../previews/it-electronic-dark_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
  </tr>
</table>
</div>

<table width="100%" margin-left="auto" margin-right="auto">
  <tr>
    <th>IT Electronic lighpython EN</th>
    <th>IT Electronic lightxp EN</th>
    <th>IT Electronic vista EN</th>
    <th>IT Electronic light EN</th>
  </tr>
  <tr>
    <td width="25%">
      <img src="../../../previews/it-electronic-lightpython_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
    <td width="25%">
      <img src="../../../previews/it-electronic-lightxp_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
    <td width="25%">
      <img src="../../../previews/it-electronic-vista_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
    <td width="25%">
      <img src="../../../previews/it-electronic-light_en.png" 
        alt="IT Electronic CV example preview" />
    </td>
  </tr>
</table>
</div>


## Usage

This is how to invoke the different color themes

```latex
\documentclass[darkpython]{hipstercv}
% insert whatever style you want to use where it says 'darkpython' now:
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
		* Run `pdflatex` (build/compile).
		* The `main.pdf` file should show on output.

	* *****Additional build procedure for windows users and for forkers*****
		* ***The following two methods needs more programs to install :***

			* [`*` Python](<https://www.python.org/downloads/>) is to create a copy of `main.tex` named `compile.tex` and modify it and build from it pdf(s) and image(s).
			* [`**` ImageMagick](<https://imagemagick.org/script/download.php>) & [`**` Ghostscript](<https://www.ghostscript.com/download.html>) to convert pdf(s) to image(s).

		1. ***Batchfile build method***
			* Execute `compile_it_electronic_en.bat` (build/compile).
			* The `CV IT."theme name" EN "date".pdf` file(s) should show on output.
			* The converted image(s) will be moved to `previews` folder.

		2. ***Python build method***
			* Execute `build.py` (build/compile).
			* The `CV IT."theme name" EN "date".pdf` file(s) should show on output.
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
