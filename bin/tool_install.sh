#!/bin/bash
#
# Install tools for packaging and uploading
#

# Make sure you have the latest versions of setuptools and wheel installed:
python3 -m pip install --user --upgrade setuptools wheel

# You can use twine to upload the distribution packages.
# You’ll need to install Twine:
python3 -m pip install --user --upgrade twine

