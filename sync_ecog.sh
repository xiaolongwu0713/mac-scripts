#!/bin/bash
# usage: ./sync_gesture_model_google_colab.sh gesture_classification_sid10_85accuracy(convert_this_file) gesture_classification(target file)
source /usr/local/venv/3.6.9/bin/activate
cd /Users/long/Documents/BCI/python_scripts/googleDrive/Colab\ Notebooks/ecog_finger
#jupyter nbconvert --to script gesture_classification.ipynb
jupyter nbconvert --to script $1.ipynb
suffix='.txt'
new_suffix='.py'
generated_file="$1${suffix}"
new_file="/Users/long/Documents/BCI/python_scripts/googleDrive/ecog_finger/$2${new_suffix}"
mv ${generated_file} ${new_file}
#echo $generated_file
sed -i -- 's/^%%/#%%/g'  $new_file
sed -i -- 's/^!/#!/g'  $new_file
sed -i -- 's/^%cd/#%cd/g'  $new_file
sed -i -- 's/^debugg = False/debugg = True/g'  $new_file
echo "saving to" +  $new_file

