#!bin/bash
curl -u 'btholmes' https://api.github.com/user/repos -d "{\"name\":\"$1\"}";
git init;
git remote add origin https://github.com/btholmes/$1.git;



# {
#   "name": "Hello-World",
#   "description": "This is your first repository",
#   "homepage": "https://github.com",
#   "private": false,
#   "has_issues": true,
#   "has_projects": true,
#   "has_wiki": true
# }