#/bin/bash

echo "Getting feeds"

let "it = 1"

while read line;
do
	if [ ${line} != "#feeds" ]
	then
		echo "Will be fetching file " $line " as no. " $it;
		(wget -q -O- "${line}" > lixo/$it; xmllint --format lixo/$it > lixo/$it.xml; xmllint --nocdata lixo/$it.xml > feed/$it.xml ) & 
		let "it++";
	fi
	
	
done < feeds.txt

echo "Fetching files in background..."

wait

echo "All done."

