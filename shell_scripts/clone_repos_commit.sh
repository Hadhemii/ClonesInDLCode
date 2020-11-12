#!bin/sh
readarray array <<< $(cat "$@")

for url in ${array[@]}
do
repoName="$(cut -d '/' -f5 <<< "$url")"
repo="$(cut -d '.' -f1 <<< "$repoName")"
echo "$repo"

git clone $url
cd $repo
commits=$(git rev-list master)
mv /url_to_repositories/repositories/$repo /url_to_repositories/repositories/$repo"-last"
cd /url_to_repositories/repositories
for commit in ${commits[@]}
do
        git clone $url
        cd $repo
        git checkout $commit
        mv /url_to_repositories/$repo /url_to_repositories/repositories/$repo-$commit
        cd /store/travail/hajeba/repositories
done
find /url_to_repositories/repositories -type f -not -name "*.py" -delete
done