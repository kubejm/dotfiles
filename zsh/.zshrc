# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME=""
 
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
 
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
 
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
 
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
 
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
 
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
 
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
 
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
 
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
 
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
 
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
 
# User configuration
 
# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
 
source $ZSH/oh-my-zsh.sh
 
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
 
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
 
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval $(opam config env)

# golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin
 
# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"
 
# Delete local branches merged to master
alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d'

# vi mode
bindkey -v
export KEYTIMEOUT=1

# notes
alias sp='vim ~/notes/scratchpad-$(date +"%m-%d-%Y").md'

# Setting ag as the default source for fzf
#export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# alias exa
alias l=exa
alias ls=exa

# sublime
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# load pure
autoload -U promptinit; promptinit
prompt pure

# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  # /usr/local/ used to be derived from 'brew --prefix'
  [ -f /usr/local/etc/profile.d/z.sh ] && source /usr/local/etc/profile.d/z.sh
fi

# dev tools
export PATH=$PATH:~/dev/tools

# antlr
export CLASSPATH=".:/usr/local/lib/antlr-4.7.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.7.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

# plantuml
alias plantuml='java -jar /usr/local/lib/plantuml.jar'

alias python=python3
alias pip=pip3
