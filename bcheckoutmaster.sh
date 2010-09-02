#/bin/bash

cd /Users/jonathan/Work/Bioclipse
PLUGINS=`find * -type d -maxdepth 0`
for PLUGIN in $PLUGINS
do
    cd "$PLUGIN"; git checkout master; cd -
done
