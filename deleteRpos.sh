#!bin/bash
# DELETE /repos/:owner/:repo
curl -u 'btholmes' https://api.github.com/user/repos -d "{\"name\":\"$1\"}";

$USERNAME = "$1"
$PASSWORD = "$2"

curl -u $USERNAME:$PASSWORD https://api.github.com/orgs/$ORG/repos | jq '.[].full_name' | tr -d '\r' | xargs -I '{}' curl -u $USERNAME:$PASSWORD -XDELETE https://api.github.com/repos/'{}'


