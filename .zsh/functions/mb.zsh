function mb () {
  base_branch=$(cb)
  if [ -n "${2}" ]; then
    git checkout -b ${1} ${2}
  else
    git checkout -b ${1}
  fi
  git config "branch.$(cb).base" ${base_branch}
}
