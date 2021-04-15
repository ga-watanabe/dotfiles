# Unix
alias de='cd ~/Desktop'
alias lsa="ls -laF"
alias del="rm -rf"
alias sr="exec zsh -l"
alias ..="cd .."
alias ../..="cd ../.."
alias ../../..="cd ../../.."

# Docker
alias dk="docker"
alias dkc="docker-compose"
alias dkp="docker-compose ps"
alias dku="rm ./tmp/pids/server.pid; docker-compose up -d"
alias dks="docker-compose stop"
alias dkw="docker-compose exec web bash"
alias dka="docker-compose exec app bash"
alias dkl="docker-compose logs --tail=500 web"

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
alias ds="git diff --staged"
alias rbc="git rebase --continue"
alias rbs="git rebase --skip"
alias rba="git rebase --abort"
alias ch="git cherry-pick"
alias chc="git cherry-pick --continue"
alias chs="git cherry-pick --skip"
alias cha="git cherry-pick --abort"
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
alias -g RET='RAILS_ENV=test'
alias rc='rails console'
alias rcs='rails console --sandbox'
alias rdm='rake db:migrate'
alias rdms='rake db:migrate:status'
alias rdr='rake db:rollback'
alias rdsl='rake db:schema:load'

# AWS
alias "awsi"="aws sts get-caller-identity"
alias "awss"="aws ssm start-session --target"
