if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NPM_CONFIG_PREFIX=~/.npm-global
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.cargo/bin:$HOME/.npm-global/bin:$HOME/.local/bin:$HOME/.config/apache-maven-3.9.4/bin
export ZSH="$HOME/.oh-my-zsh"
export LANG=pt_Br.UTF-8

DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
HISTFILE=~/.histfil
HISTSIZE=5000
SAVEHIST=1000
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

plugins=(
  git
  dotenv
  docker
  thefuck
)

fpath=(${ASDF_DIR}/completions $fpath)
. "$HOME/.asdf/asdf.sh"

alias ls="exa --icons"  
autoload -Uz compinit && compinit

if [ -d $HOME/.local/share/oh-my-zsh/plugins ]; then
	source $HOME/.local/share/oh-my-zsh/plugins/dnf/dnf.plugin.zsh
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
