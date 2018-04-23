# LONG COMMIT: Adds all files to stage and sends to commit file for message
lc() {
	git add .
	git commit
}

# QUICK COMMIT: Adds all files to stage and commits using arg 1 as message
# Example: qc "Initial commit"
qc() {
	git add .
	git commit -m $1
}

# Push branch (In Progress)
push() {
  output=$(git push 2>&1)
  if [[ $output = *"has no upstream"* ]]
	then
        export branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
        git push --set-upstream origin $branch
	else
				echo $output
  fi
}

alias pull="git pull"
