#!/usr/bin/bash
filename="$1"
while read -r line
do
    name="$line"
    cd /Users/benholmes/Documents/GithubRepos/$name
    git add .
    git commit -m "automated update"
    git push origin master
# 	echo $name
done < "$filename"