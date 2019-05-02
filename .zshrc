function source-env() {
  if [[ -r "$HOME/.dotfiles-env" ]]; then
    source "$HOME/.dotfiles-env"
  else
    print-error "env file not found"
  fi
}

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=cloud

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/dotfiles/zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

source-env

export http_proxy=${proxy_work_final}
export HTTP_PROXY=${proxy_work_final}
export https_proxy=${proxy_work_final}
export HTTPS_PROXY=${proxy_work_final}

export GH_TOKEN=${github_jenkins}