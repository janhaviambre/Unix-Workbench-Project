#!/usr/bin/env bash
# File: makefile

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Title of the project: Unix-Workbench-Project" > README.md
	echo "\nThe date and time at which make was run: " >> README.md
	date >> README.md
	echo "\nThe number of lines of code contained in guessinggame.sh:  " >> README.md
	cat guessinggame.sh | wc -l >> README.md
