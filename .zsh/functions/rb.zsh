function rb () {
  git config "branch.$(cb).base" ${1}
  git rebase ${1}
}
