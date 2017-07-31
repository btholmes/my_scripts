#!/usr/bin/bash
filename="repoLocations.txt"
while read -r line
do
    name="$line"
    cd /Users/benholmes/Documents/GithubRepos/$name
    if [ "$name" = "/Users/benholmes/Documents/GithubRepos/my_scripts" ]; then 
	    echo "copying my_scripts"
	    sh "./copyShell.sh"
	    git add .
	    git commit -m "automated update"
	    git push origin master
	else
	    git add .
	    git commit -m "automated update"
	    git push origin master
	fi;
 
# 	echo $name
done < "$filename"