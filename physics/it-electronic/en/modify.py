import sys


def main():
	# pdflatex --jobname=test main.tex
	# available options are: darkpython, lightpython, darkxp, lightxp, vista, black&white, dark, light
	a_file = open("main.tex", "r")
	list_of_lines = a_file.readlines()
	list_of_lines[27] = f"\documentclass[{sys.argv[1]}]{{../../lib/physics}}\n"
	a_file = open("main.tex", "w")
	a_file.writelines(list_of_lines)
	a_file.close()


if __name__ == '__main__':
	main()