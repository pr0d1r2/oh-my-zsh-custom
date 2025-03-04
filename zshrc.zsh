# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship-prompt/spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
# ZSH_CUSTOM=~/.oh-my-zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alias-finder
  ansible
  aws
  bgnotify
  brew
  bundler
  capistrano
  catimg
  colored-man-pages
  colorize
  command-not-found
  common-aliases
  copybuffer
  copydir
  copyfile
  cp
  dash
  dircycle
  docker-compose
  docker-machine
  docker
  dotenv
  emoji-clock
  emoji
  emotty
  encode64
  extract
  fancy-ctrl-z
  fastfile
  fd
  frontend-search
  fzf
  gas
  gcloud
  gem
  gitfast
  github
  gitignore
  globalias
  gnu-utils
  heroku
  history-substring-search
  history
  httpie
  iterm2
  jira
  jsontools
  kitchen
  knife_ssh
  knife
  last-working-dir
  nmap
  osx
  per-directory-history plugin
  perl
  perms
  pip
  pipenv
  postgres
  pow
  powder
  powify
  profiles
  rails
  rake-fast
  rake
  rbenv
  redis-cli
  ripgrep
  rsync
  ruby
  safe-paste
  scd
  screen
  shrink-path
  singlechar
  spring
  ssh-agent
  sudo
  systemadmin
  terraform
  thor
  tig
  timer
  tmux-cssh
  tmux
  tmuxinator
  torrent
  urltools
  vagrant-prompt
  vagrant
  wd
  web-search
  xcode
  yarn
  youtube-dl
  zsh-navigation-tools
  zsh_reload
  zsh-nvm
)

# User configuration

export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

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

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export BUNDLER_EDITOR="mvim"

setopt interactivecomments

# Separate up arrow lookback for local and global ZSH history
unsetopt inc_append_history

export PATH="$HOME/.rbenv/bin:$PATH"

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

source $HOME/.compiled_shell_aliases.sh

zstyle :omz:plugins:ssh-agent agent-forwarding on

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  if [ -d "/nix/var/nix/profiles/default/bin" ]; then
    export PATH="/nix/var/nix/profiles/default/bin:$PATH"
  fi
  if [ -n "$(ls -d /opt/homebrew/Cellar/grep/*/libexec/gnubin)" ]; then
    export PATH="$(ls -d /opt/homebrew/Cellar/grep/*/libexec/gnubin | sort | tail -n 1):$PATH"
  fi

  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix
