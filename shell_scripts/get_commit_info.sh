#!bin/sh
readarray repos <<< $(cat "$@")
CSV_FILE="/url_to_folder/clone-work/commit_info.csv"
echo 'repository-@-commit_id-@-email-@-datetime-@-commit_message' > $CSV_FILE
for repo in ${repos[@]}
do
repoName="$(cut -d '/' -f5 <<< "$repo")"
echo $repoName
cd $repo
git log --pretty=format:"%H-@-%ae-@-%ai-@-%s" | sed -e "s/.*/$repoName-@-&/" >> $CSV_FILE
done
