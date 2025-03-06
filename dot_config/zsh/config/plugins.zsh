# Finish if there isn't a plugins directory.
if (! [[ -d "$ZDOTDIR/plugins/" ]]) {
  return 1
}

# fzf-tab: Use fzf as completion menu
source "$ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh"

# zsh-autopair: Insert or delete brackets, parens, quotes in pair.
source "$ZDOTDIR/plugins/autopair/autopair.zsh"

# zsh-autosuggestions: Fish-like auto-suggestions.
source "$ZDOTDIR/plugins/autosuggestions/zsh-autosuggestions.zsh"

# fast-syntax-highlighting: Syntax highlighting support.
source "$ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
  FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}unknown-token]='fg=red'
