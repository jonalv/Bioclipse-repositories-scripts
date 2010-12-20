#!/bin/bash

cd /Users/jonathan/Work/Bioclipse
PLUGINS=`find * -type d -maxdepth 0`

for PLUGIN in $PLUGINS
do
   cd "$PLUGIN"
   BRANCH=`git status | grep "On branch" | sed 's/^.*On branch //'`
   echo ""
   echo $PLUGIN
   git push bioclipse $BRANCH
   cd ..
done
