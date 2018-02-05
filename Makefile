# Pesgwebapp Makefile

# Shell
SHELL := /bin/bash
#Project
PROJECT = "num-ocaml"
#Version
RELEASE = "0.0.1"
#Authors
AUTHORS = "hilaly mohammed-amine"
# Path to source directory
PROJECT_PATH := .
# OS machine
OS_TYPE = 'uname -a'


generate-mli:
	ocamlc

compile-interfaces:
	ocamlc -c src/*.mli

compile-ml:
	ocamlc -c src/*.ml

compile-binary:
	ocamlc *.cmo main

run:
	./main

clean:
	# Clean manifest build dist
	rm -f src/*.cmi
	rm -f src/*.cmo

.PHONY: clean
