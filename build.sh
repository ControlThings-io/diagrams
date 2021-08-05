#!/bin/bash

# You must have plantuml installed to run this.
# On Debian/Ubuntu derivatives, you can install it with `sudo apt install plantuml`

DELETED=`ls img/ | wc -l`
rm img/*
cd src/
plantuml -v -Tpng -Tsvg -o ../img/ * 2>&1 | grep "Creating file"
plantuml -v -Tpng -o ../img/ * 2>&1 | grep "Creating file"
echo "Deleted $DELETED old files in ./img/"
echo "Created `ls ../img/ | wc -l` new files in ./img/"
