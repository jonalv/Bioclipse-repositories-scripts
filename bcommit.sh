#!/bin/bash

cd /Users/jonathan/Work/Bioclipse
PLUGINS=`find * -type d -maxdepth 0`
if [ "$#" != "1" ]; then
    echo 'hey I can haz one message plz?'
    exit
fi
MESSAGE=$1

for PLUGIN in $PLUGINS
do
   cd "$PLUGIN"
   echo ""
   echo $PLUGIN
   git commit -a -m "$MESSAGE"
   cd ..
done
