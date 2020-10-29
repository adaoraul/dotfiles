if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/antigen.zsh

# plugin management
antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle extract
antigen bundle fzf
antigen bundle git
antigen bundle magic-enter
antigen bundle ssh-agent
antigen bundle tmux

antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle HeroCC/LS_COLORS

antigen theme romkatv/powerlevel10k

antigen apply

# config
alias vim=nvim

export BAT_THEME="Dracula"
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND="ag -l --nogroup --column"
export FZF_CTRL_R_OPTS="--sort"
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTTIMEFORMAT="[%F %T] "
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export VISUAL=$EDITOR

setopt EXTENDED_HISTORY
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

eval "$(rbenv init -)"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
