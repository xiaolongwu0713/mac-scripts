if [[ '$1' == 'ssd' ]]
then
export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh
export TUTORIAL_DATA=/Volumes/Samsung_T5/data/freesurfer/tutorial
export SUBJECTS_DIR=$TUTORIAL_DATA/buckner_data/tutorial_subjs
else [[ '$1' == 'local' ]]
export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh
export TUTORIAL_DATA=/Users/long/Documents/data/freesurface
export SUBJECTS_DIR=$TUTORIAL_DATA/subjects
fi
