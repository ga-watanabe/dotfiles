export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "sorin-ionescu/prezto"
zplug "marzocchi/zsh-notify" # Macで時間のかかるコマンドが終わったら自動で通知する
if ! zplug check --verbose; then # 未インストールがあれば
  printf 'Install? [y/N]: '
  if read -q; then # zshのyes/no判定をするワンライナー
    echo; zplug install
  fi
fi

# プラグインを読み込み、コマンドにパスを通す
zplug load --verbose

# 最低限
# zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-syntax-highlighting"
# zplug "zsh-users/zsh-completions"

# prezto用のプラグイン
# zplug "modules/environment", from:prezto
# zplug "modules/terminal", from:prezto
# zplug "modules/editor", from:prezto
# zplug "modules/history", from:prezto
# zplug "modules/directory", from:prezto
# zplug "modules/spectrum", from:prezto
# zplug "modules/utility", from:prezto
# zplug "modules/completion", from:prezto
# zplug "modules/prompt", from:prezto
# zplug "modules/homebrew", from:prezto
# zplug "modules/ruby", from:prezto

#zpreztoの初期化
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi

# aliases
source ~/.zsh/aliases.zsh

# zplug
# source ~/.zsh/zplug.zsh

# custom functions
for function in ~/.zsh/functions/*; do
  source $function
done

# rbenv
eval "$(rbenv init -)"

# prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '(%s)[%b|%a]'
precmd () { vcs_info }
setopt prompt_subst
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
PS1="%1~ $ "

# shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
