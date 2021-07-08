#!/bin/bash
source /usr/local/venv/3.6.9/bin/activate
cd /Users/long/Documents/BCI/python_scripts/googleDrive/Colab\ Notebooks
jupyter nbconvert --to script $1
suffix='.txt'
new_suffix='.py'
generated_file="$1${suffix}"
new_file="/Users/long/Documents/BCI/python_scripts/googleDrive/grasp/TSception/$1${new_suffix}"
mv ${generated_file} ${new_file}
#echo $generated_file
sed -i -- 's/^%%/#%%/g'  $new_file
sed -i -- 's/^!/#!/g'  $new_file
sed -i -- 's/^%cd/#%cd/g'  $new_file
sed -i -- 's/^debugg = False/debugg = True/g'  $new_file
echo "saving to" +  $new_file

