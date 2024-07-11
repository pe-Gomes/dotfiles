# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

eval "$(starship init zsh)"

alias vim="nvim"
alias ls="exa --icons"
alias ll="exa --icons -l"
alias cat="bat --paging=never"

# Add Suport for Home, End and Delete key
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH=$PATH:$(go env GOPATH)/bin


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pedro/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pedro/google-cloud-sdk/path.zsh.inc'; fi

# bun completions
[ -s "/Users/pedro/.bun/_bun" ] && source "/Users/pedro/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# libpq
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"


# Source Fuzy Find History
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"

export PATH
# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
