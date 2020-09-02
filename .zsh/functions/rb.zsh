function rb () {
  if [ -n "${1}" ]; then
    git config "branch.$(cb).base" ${1}
    git rebase ${1}
  else
    base="branch.$(cb).base"
    git branch -a | peco | xargs -I{} bash -c "git config ${base} {} && git rebase {}"
  fi
}