#/bin/bash
for i in 7 8 9 10 11 12 13 14
do
echo "downloading $i."
	wget https://gin.g-node.org/robintibor/high-gamma-dataset/raw/master/data/train/$i.mat 

done
