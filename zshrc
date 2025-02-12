# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export CPPFLAGS=-DPNG_ARM_NEON_OPT=0

# To customize prompt, run `p10k configure` or edit ~/.config/p10k.zsh.
[[ ! -f ~/.config/p10k.zsh ]] || source ~/.config/p10k.zsh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide
eval "$(zoxide init --cmd cd zsh)"

# aliases
alias ls="eza --icons=always"
alias hocker="$HOME/Developer/hrv-hocker/hocker.sh"
alias gpin="[ -d .git ] && git pull"
alias inv='fzf -m --preview="bat --color=always {}" | xargs nvim'

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionexport PATH="/usr/local/opt/php@8.1/bin:$PATH"

export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"
