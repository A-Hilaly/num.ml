#!/bin/bash


ocamlc -c src/*.mli

ocamlc -c src/*.ml

ocamlc src/*.cmo -o num

./num
