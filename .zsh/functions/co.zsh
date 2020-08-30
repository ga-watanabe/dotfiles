function co() {
  if [ -n "${1}" ]; then
    git checkout ${1}
  else
    git branch | peco | xargs git checkout
  fi
}
