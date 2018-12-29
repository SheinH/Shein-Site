#!/bin/bash

function copy {
	aws s3 cp $1 s3://sheinhtike.com/$1
}

copy index.html
copy contents.html
copy style.css
for file in images/*
do
	copy $file
done

for file in writeups/*
do
	copy $file
done
