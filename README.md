# Skeleton project

To set up things:
  - `setup/setup_dirs.sh`.  This will set up symlinks to shared data directories.
  - `setup/setup_pbenv.sh`.  This will take about 15 minutes to create a conda `pbenv` environment.
  - `conda activate pbenv` once you have the environment, to get all the needed dependencies.
  - `cd notebook; jupyter notebook &`

Directory layout.

Bulk data, not to be checked in, to be symlinked to shared directories within the team.
  - /datasets
  - /models
  - /weights

Bulk data, not to be checked in, specific to one person.  Don't symlink to other peoples' copies.
  - /results

Code
  - /notebooks - for notebooks.  Call `setup_notebook.sh` before committing, to keep repo small.
  - /util - dissection utilities, prototyping ui toolkit, etc.
  - /experiment - specific code for our paper's experiments
  - /[other-packages] - reusable code in whatever other packages we need.
