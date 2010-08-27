#!/bin/bash

cd /Users/jonathan/Work/Bioclipse
PLUGINS=`find * -type d -maxdepth 0`

for PLUGIN in $PLUGINS
do
   OUTPUT=`cd "$PLUGIN"; git fetch origin; git status`
   NUM_OF=`echo "$OUTPUT" | egrep '^#' | wc -l`
   if [ $NUM_OF -gt 1 ] 
    then
        echo ""
        echo "$PLUGIN" | perl -nle 'print "#" x 20, " ", uc' 
        echo "$OUTPUT"
    fi
done


