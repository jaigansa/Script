#!/bin/bash


mkdir export

for x in ls *.jpg;

do  cwebp  $x -o ./export/${x%%.*}.webp; done


