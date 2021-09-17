import os
import sys
import ntpath
import pathlib
from datetime import datetime


theme = [
	"darkpython",
	"lightpython",
	"darkxp",
	"lightxp",
	"vista",
	"black&white",
	"dark",
	"light"
]

name = [
	"DARK.PY",
	"LIGHT.PY",
	"DARK.XP",
	"LIGHT.XP",
	"VISTA",
	"B&W",
	"DARK",
	"LIGHT"
]


def path_leaf(path):
	head, tail = ntpath.split(path)
	return ntpath.basename(head), tail


def terminal(command):
	os.system(command)


def modify(theme):
	a_file = open("compile.tex", "r")
	list_of_lines = a_file.readlines()
	list_of_lines[27] = f"\documentclass[{theme}]{{../../lib/physics}}\n"
	a_file = open("compile.tex", "w")
	a_file.writelines(list_of_lines)
	a_file.close()


def main():
	global name, theme
	now = datetime.now()
	current_date = now.strftime("%Y-%m-%d")

	head, tail = path_leaf(pathlib.Path().resolve())

	fullname = f'"{head}_{str(tail).lower()}.png"'
	it = "IT"
	frg = len(theme)
	srg = 2
	path = "..\..\..\previews"
	if head == "it-hydrogeology":
		it = "HIGH"
	elif head == "it-dev":
		frg = srg = 1
		path = "..\..\previews"
		name = ["DEV"]
		theme = ["dev"]

	terminal('@ECHO OFF')

	for X in range(frg):

		terminal('copy main.tex compile.tex')

		if head == "it-hydrogeology" or head == "it-electronic":
			fullname = f'"{head}-{theme[X]}_{str(tail).lower()}.png"'
			modify(theme[X])

		[terminal(f'pdflatex -quiet --jobname="CV {it}.{name[X]} {str(tail).upper()} {current_date}" compile.tex') for _ in range(srg)]

		terminal('del *.aux *.log *.out *.synctex.gz compile.tex')
		terminal(f'magick -density 192 "*.{name[X]} *.pdf" -resize 826 -depth 8 -quality 96 {fullname}')
		terminal(f'move /Y {fullname} {path}')


if __name__ == '__main__':
	if len(sys.argv) == 1:
		main()
	elif len(sys.argv) == 2:
		modify(sys.argv[1])
