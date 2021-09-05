#!/bin/bash
source /usr/local/venv/3.6.9/bin/activate
cd /Users/long/Documents/BCI/python_scripts/googleDrive/Colab\ Notebooks/gesture
jupyter nbconvert --to script tf_gesture_classification.ipynb
suffix='.txt'
new_suffix='.py'
generated_file="tf_gesture_classification${suffix}"
new_file="/Users/long/Documents/BCI/python_scripts/googleDrive/gesture/tf_gesture_classification${new_suffix}"
mv ${generated_file} ${new_file}
#echo $generated_file
sed -i -- 's/^%%/#%%/g'  $new_file
sed -i -- 's/^!/#!/g'  $new_file
sed -i -- 's/^%cd/#%cd/g'  $new_file
sed -i -- 's/^debugg = False/debugg = True/g'  $new_file
echo "saving to" +  $new_file

