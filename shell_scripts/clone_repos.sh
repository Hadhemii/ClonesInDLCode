#!bin/sh

readarray array <<< $(cat "$@")
mkdir -p /tmpstore/hajeba/repositories
cd /tmpstore/hajeba/repositories

for repo in ${array[@]}
do
repoName="$(cut -d '/' -f5 <<< "$repo ")"
repo="$(cut -d '.' -f1 <<< "$repoName")"
echo "$repo"

git clone $repo

done
