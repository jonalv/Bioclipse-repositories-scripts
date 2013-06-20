#/bin/bash

cd /Users/jonathan/Work/Bioclipse
PLUGINS=`find bioclipse* -type d -maxdepth 0`
for PLUGIN in $PLUGINS
do
    cd "$PLUGIN"; echo "$PLUGIN"; git fetch origin; git pull origin; cd -
    echo ""
done
date
