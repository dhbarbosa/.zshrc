HISTFILE=~/.histfil
HISTSIZE=5000
SAVEHIST=1000

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

. "$HOME/.asdf/asdf.sh"

fpath=(${ASDF_DIR}/completions $fpath)

export PATH=$PATH:$HOME/.cargo/bin:$HOME/.npm-global/bin:$HOME/.local/bin:$HOME/.config/apache-maven-3.9.4/bin
export NPM_CONFIG_PREFIX=~/.npm-global
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

autoload -Uz compinit && compinit

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bg=#ff00ff,bold"

alias ls="exa --icons"  

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
