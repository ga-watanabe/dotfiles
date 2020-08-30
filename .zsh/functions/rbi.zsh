function rbi () {
  if [ -n "${1}" ]; then
    git rebase -i HEAD~${1}
    return
  fi
  base_branch=$(git config "branch.$(cb).base")
  if [ -z "$base_branch" ]; then
    echo "no base branch"
    return
  fi
  base_commit_id=$(git merge-base ${base_branch} HEAD)
  git rebase -i ${base_commit_id}
}
