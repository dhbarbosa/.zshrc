if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NPM_CONFIG_PREFIX=~/.npm-global
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export ZSH=$HOME/.oh-my-zsh
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"
export PATH="/usr/local/opt/openjdk@17/bin:$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"


plugins=(
    git
    autoenv
    zsh-autosuggestions
    docker
    thefuck
)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env
source $HOME/.asdf/asdf.sh
source $HOME/powerlevel10k/powerlevel10k.zsh-theme



alias ls="exa --icons"  

autoload -Uz compinit && compinit

if [ -d $HOME/.local/share/oh-my-zsh/plugins ]; then
	source $HOME/.local/share/oh-my-zsh/plugins/dnf/dnf.plugin.zsh
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
