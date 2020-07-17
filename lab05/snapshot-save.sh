#!/bin/dash

version=0
while [ -d ".snapshot.$version" ]
do
    ((version=version+1))
done

mkdir ".snapshot.$version"
echo "Creating snapshot $version"

for file in *
do
	if [ `echo $file|egrep "^\."` ] || [ "$file" = "snapshot-save.sh" ] || [ "$file" = "snapshot-load.sh" ]
	then
		continue
	fi	

    cp $file ".snapshot.$version"

done


