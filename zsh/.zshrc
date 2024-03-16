# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
   git
   tmux
   zsh-syntax-highlighting
   zsh-autosuggestions
   aliases
   docker
   docker-compose
   kubectl
   helm
   history
   vscode
   npm
   vagrant
   zoxide
   sudo
   sublime
   minikube
)

source ~/.oh-my-zsh/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# ===========================
# ========== Alias ==========
# ===========================
# Alias for clear
alias c="clear"

# Alias for tmux
alias tksa="tmux kill-session -a"
alias tr="tmux source-file ~/.tmux.conf"
alias td="tmux detach"

# Alias for web_search
alias wsb="web_search baidu"
alias ws="web_search google"
alias wsg="web_search google"

# Alias for pfr replacement: pip freezen
alias pfr='pip freeze > requirements.txt'

# Alias for ssh
alias smaster='ssh root@master'
alias sslave1='ssh root@slave1'
alias sslave2='ssh root@slave2'

# Alias for ls replacement: exa
alias ls="eza --icons"
alias ll="eza --icons --long --header"
alias la="eza --icons --long --header --all"
alias lg="eza --icons --long --header --all --git"
alias tree="eza --tree --icons"

# Alias for cd replacement: zoxide
eval "$(zoxide init zsh --cmd z)"
eval "$(zoxide init zsh --cmd cd)"

# Alias for cat replacement: bat
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME:-~/.config}/bat.conf"
alias cat="bat"

# Alias for du replacement: dust
alias du="dust"

# Alias for df replacement: duf
alias df="duf"

# Alias for top replacement: gtop
alias top="gtop"

# =========================================
# ========== Envirment Variables ==========
# =========================================
# Jave_Home
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
export CLASS_PATH=$JAVA_HOME/lib
export PATH="$JAVA_HOME/bin:$PATH"

# Maven_Home
export MAVEN_HOME="$HOME/env/maven"
export PATH="$MAVEN_HOME/bin:$PATH"

# Scala_Home
export SCALA_HOME="$HOME/env/scala"
export PATH="$SCALA_HOME/bin:$PATH"

# MySQL
export PATH="/usr/local/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@8.0/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@8.0/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@8.0/lib/pkgconfig"

# Go_Home
# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin
# export GOPATH=/Volumes/Environment/go
# go env -w GO111MODULE=on
# go env -w  GOPROXY=https://goproxy.cn

# Pyenv_Home
export PYENV_ROOT="$HOME/env/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Nvm_Home
export NVM_DIR="$HOME/env/nvm"
function _install_nvm() {
  unset -f nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This sets up nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # load nvm bash_completion
  nvm "$@"
}
function nvm() {
    _install_nvm "$@"
}

# tmux config
# tmux-256color
if [[ $TMUX != "" ]] then
    export TERM="tmux-256color"
else
    export TERM="xterm-256color"
fi
export TMUX_TMPDIR=~/.tmux/tmp

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
