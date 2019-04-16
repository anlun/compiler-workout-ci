#!/bin/bash

cd /usr/share/compiler-workout &&
eval `opam config env` &&
ocamlc -v &&
opam pin list &&
make &&
make regression
