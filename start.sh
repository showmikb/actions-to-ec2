export PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
GIT_COMMIT_ID=`git rev-parse HEAD`
FILE_NAME=`git diff-tree --no-commit-id --name-only -r \$GIT_COMMIT_ID`
echo $FILE_NAME
pcluster create -c \$FILE_NAME \$FILE_NAME  -r us-east-1
