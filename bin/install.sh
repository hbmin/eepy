#!/bin/bash
#
# Install eepy package from either pypi.org or test.pypi.org
#

TEST_PYPI="--index-url https://test.pypi.org/simple/"
PACKAGE=eepy

if [ "$#" -gt 0 ]; then
	if [ "$1" = "-pypi" ]; then
	        echo "Intalling $PACKAGE from FORMAL site (pypi.org) ..."
		python3 -m pip install -U "$PACKAGE" --user
		exit
	elif [ "$1" = "-test" ]; then
	        echo "Intalling $PACKAGE from TEST site (test.pypi.org) ..."
		python3 -m pip install -U $TEST_PYPI "$PACKAGE" --user
		exit
	fi
fi

echo "[ERROR] need either -pypi or -test option to install $PACKAGE."

