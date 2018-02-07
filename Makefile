SHELL := /bin/bash
PROJECT = "num-ocaml"
RELEASE = "0.0.1"
AUTHORS = "hilaly mohammed-amine"
PROJECT_PATH := .
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
