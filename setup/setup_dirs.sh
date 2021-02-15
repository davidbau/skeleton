#!/bin/bash

# Start from parent directory of script
cd "$(dirname "$(dirname "$(readlink -f "$0")")")"

# Do not copy big data - instead just link to copies here
PROJ_ROOT=/data/vision/torralba/scratch/davidbau/pbw

# Some read-only directories to link
for DIRNAME in datasets models weights
do
if [[ ! -e ${DIRNAME} ]]
then
    ln -sfn ${PROJ_ROOT}/${DIRNAME} .
fi
done

# Also set up links in notebook directory.
cd notebooks
./setup_notebooks.sh
