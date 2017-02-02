#!bin/bash
curl -u 'btholmes' https://api.github.com/user/repos -d "{\"name\":\"$1\"}";
git init;
git remote add origin https://github.com/btholmes/$1.git;