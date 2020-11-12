#!bin/sh

readarray array <<< $(cat "$@")

echo "repoName_path,total_sloc" > /url_to_folder/clone-work/repo_sloc

for myvar in ${array[@]}
do
echo "$myvar"
cd $myvar
whereAmI="$(pwd)"
echo "$whereAmI"
verbose_sloc="$(sloccount .)"
total_sloc="$(sloccount --cached --details | grep "./*.py" | print_sum)"
echo "$total_sloc"
echo "$myvar,$total_sloc" >> /url_to_folder/clone-work/repo_sloc
done