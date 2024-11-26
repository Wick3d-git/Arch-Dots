ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light metaory/zsh-roundy-prompt
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found


autoload -U compinit && compinit
zinit cdreplay -q


ROUNDY_COLORS_FG_USR='#ffffff'
ROUNDY_COLORS_BG_USR='#4c566a'
ROUNDY_COLORS_FG_DIR='#ffffff'
ROUNDY_COLORS_BG_DIR='#4c566a'
ROUNDY_COLORS_BG_TEXC='#81A1C1'
ROUNDY_COLORS_FG_TEXC='#ffffff'

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --color=always --icons=always $realpath'

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

alias ls='eza --color=always --icons=always'
alias fastfetch='fastfetch -c ~/.config/fastfetch/arch.jsonc --colors-block-range-start 9'
alias c='clear'


fastfetch

eval "$(fzf --zsh)"

