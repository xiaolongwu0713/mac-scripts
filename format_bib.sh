#/bin/bash
grep -v "note = {" $1 > temp && mv temp $1
grep -v "abstract = {" $1 > temp && mv temp $1
