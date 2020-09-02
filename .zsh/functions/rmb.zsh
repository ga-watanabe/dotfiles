function rmb () {
  git branch | peco | xargs git branch -d -D
}
