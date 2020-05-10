#!/bin/bash
#
# Upload built package to test.pypi.org
# You'll see at https://test.pypi.org/project/eepy/
#
# If you give -pypi option, you'll upload to pypi.
#

if [ "$#" -gt 0 ] && [ "$1" = "-pypi" ]; then
	echo "Uploading to FORMAL site (pypi.org) ..."
	python3 -m twine upload dist/*
	exit
elif [ "$#" -gt 0 ] && [ "$1" = "-test" ]; then
	echo "Uploading to TEST site (test.pypi.org) ..."
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
else
	echo "[ERROR] need either -pypi or -test option for uploading."
	exit 1
fi

