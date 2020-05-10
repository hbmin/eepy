#!/bin/bash
#
# Clean eepy package folder
#

RM="/bin/rm -r"
DIRS=(build dist eepy.egg-info)

all_exists=true
for folder in "${DIRS[@]}"
do
	if [ ! -d "$folder" ]; then
		all_exists=false
	fi
done
if [ "$all_exists" = false ]; then
	echo "[ERROR] We can use this script only when the followings are all folders."
	echo "${DIRS[@]}"
	exit 1
fi


echo "[WARNING] We'll delete folders, \"${DIRS[@]}\"."
echo -n "Is this okay? (y/[N]) "
read yesno
deleted=0
if [ "$yesno" = "y" ] || [ "$yesno" = "yes" ]; then
	for folder in "${DIRS[@]}"
	do
		if [ -d "$folder" ]; then
            deleted=1
			echo "Deleting $folder"
			${RM} "$folder"
		fi
	done
fi

if [ "$deleted" = "0" ]; then
    echo "Program is terminted without any deletion"
fi

