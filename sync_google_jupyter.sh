#!/bin/bash
source /usr/local/venv/3.6.9/bin/activate
cd /Users/long/Documents/BCI/python_scripts/googleDrive/Colab\ Notebooks/grasp
jupyter nbconvert --to script TS_RNN.ipynb
suffix='.txt'
new_suffix='.py'
generated_file="TS_RNN${suffix}"
new_file="/Users/long/Documents/BCI/python_scripts/googleDrive/grasp/TSception/TS_RNN${new_suffix}"
mv ${generated_file} ${new_file}
#echo $generated_file
sed -i -- 's/^%%/#%%/g'  $new_file
sed -i -- 's/^!/#!/g'  $new_file
sed -i -- 's/^%cd/#%cd/g'  $new_file
sed -i -- 's/^debugg = False/debugg = True/g'  $new_file
echo "saving to" +  $new_file

