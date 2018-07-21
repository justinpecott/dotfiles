```bash
# Delete a Commit
git reset —hard HEAD~1 # the commit before HEAD
git reset —hard <sha1-commit-id> # some random commit
git push origin HEAD —force

# Stash
git stash # stash everything outstanding
git stash apply # pull everything back and leave it on the stack
git stash pop # pull everything back and remove it from the stack
git stash drop # clear the stack
git stash branch branch_name # create a branch from a stash
```