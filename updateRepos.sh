#!/usr/bin/bash
<<<<<<< HEAD
filename="repoLocations.txt"
=======
filename="$1"
>>>>>>> 3084d4dcaf94ee68aa6289a0cfd50c5abfbfd117
while read -r line
do
    name="$line"
    cd /Users/benholmes/Documents/GithubRepos/$name
<<<<<<< HEAD
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
 
=======
    git add .
    git commit -m "automated update"
    git push origin master
>>>>>>> 3084d4dcaf94ee68aa6289a0cfd50c5abfbfd117
# 	echo $name
done < "$filename"