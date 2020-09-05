function mb () {
  base_branch=$(cb)
  if [ -n "${2}" ]; then
    git checkout -b ${1} ${2}
  else
    git checkout -b ${1}
  fi
  git config "branch.$(cb).base" ${base_branch}
}

function pul () {
  git pull origin $(cb)
}

function rb () {
  if [ -n "${1}" ]; then
    git config "branch.$(cb).base" ${1}
    git rebase ${1}
  else
    base="branch.$(cb).base"
    git branch -a | peco | xargs -I{} bash -c "git config ${base} {} && git rebase {}"
  fi
}

function rmb () {
  git branch | peco | xargs git branch -d -D
}

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

function co() {
  if [ -n "${1}" ]; then
    git checkout ${1}
  else
    git branch | peco | xargs git checkout
  fi
}

function cor() {
  git branch -a | peco | xargs git checkout
}
