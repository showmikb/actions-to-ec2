GIT_COMMIT_ID=`git rev-parse HEAD`
echo "The value is \$GIT_COMMIT_ID"
FILE_NAME=`git diff-tree --no-commit-id --name-only -r \$GIT_COMMIT_ID`
echo "\$FILE_NAME"
pcluster create -c \$FILE_NAME \$FILE_NAME  -r us-east-1
