# Unix
alias de='cd ~/Desktop'
alias lsa="ls -laF"
alias rbr="rm -rf"
alias sr="exec zsh -l"

# Docker
alias dk="docker"
alias dkc="docker-compose"

# Visual Studio Code
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# Git
alias a="git add"
alias aa="git add ."
alias c="git commit"
alias ca="git commit --amend"
alias p="git push origin HEAD"
alias pf="git push -f origin HEAD"
alias f="git fetch origin"
alias m="git merge"
alias ss="git status -s"
alias lg="git log --graph"
alias br="git branch"
alias rmb="git branch -d -D"
alias ds="git diff --staged"
alias rbc="git rebase --continue"
alias rbs="git rebase --skip"
alias rba="git rebase --abort"
alias re="git reset"
alias reh="git reset --hard"
alias st="git stash"
alias pop="git stash pop"
alias cb="git symbolic-ref --short HEAD"
alias rmc="git rm --cached"
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# Rails
alias brails="bundle exec rails"
