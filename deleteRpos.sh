#!bin/bash
# DELETE /repos/:owner/:repo
curl -u 'btholmes' https://api.github.com/user/repos -d "{\"name\":\"$1\"}";
git init;
git remote add origin https://github.com/btholmes/$1.git;

curl -u $USERNAME:$PASSWORD https://api.github.com/orgs/$ORG/repos | jq '.[].full_name' | tr -d '\r' | xargs -I '{}' curl -u $USERNAME:$PASSWORD -XDELETE https://api.github.com/repos/'{}'




# {
#   "name": "Hello-World",
#   "description": "This is your first repository",
#   "homepage": "https://github.com",
#   "private": false,
#   "has_issues": true,
#   "has_projects": true,
#   "has_wiki": true
# }