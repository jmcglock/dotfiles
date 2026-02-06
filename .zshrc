# Locale (ensures Unicode/Nerd Font icons render correctly)
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# ── Modern CLI replacements ──────────────────────────────────

# eza: better ls with icons, colors, and git status
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -la"
alias lt="eza --icons --group-directories-first --tree --level=2"
alias la="eza --icons --group-directories-first -a"

# bat: better cat with syntax highlighting
alias cat="bat --paging=never"
alias catp="bat"  # bat with paging

# git-delta: better git diffs (configured via .gitconfig)
export DELTA_PAGER="less -R"

# zoxide: smart cd that learns your habits
eval "$(zoxide init zsh)"
alias cd="z"

# ── Fuzzy finder (fzf) ──────────────────────────────────────

# Set up fzf shell integration (keybindings + completion)
source <(fzf --zsh)

# fzf theme (purple gradient to match Starship)
export FZF_DEFAULT_OPTS="
  --color=fg:#E2D9F3,bg:-1,hl:#D8B4FE
  --color=fg+:#FFFFFF,bg+:#5B21B6,hl+:#E9D5FF
  --color=info:#C084FC,prompt:#C084FC,pointer:#D8B4FE
  --color=marker:#E9D5FF,spinner:#C084FC,header:#D8B4FE
  --color=border:#A78BFA,gutter:-1
  --border rounded
  --prompt '  '
"

# CTRL-T: paste selected file path
# CTRL-R: search command history
# ALT-C: cd into selected directory

# ── Zsh plugins ──────────────────────────────────────────────

# Autosuggestions (ghost text predictions as you type)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#B794F6"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Syntax highlighting (colors commands as valid/invalid)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Syntax highlighting purple theme
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]="fg=#D8B4FE,bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=#C084FC,bold"
ZSH_HIGHLIGHT_STYLES[alias]="fg=#E9D5FF,bold"
ZSH_HIGHLIGHT_STYLES[function]="fg=#D8B4FE,bold"
ZSH_HIGHLIGHT_STYLES[path]="fg=#C084FC,underline"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=#E9D5FF"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=#D8B4FE"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=#C084FC"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=#C084FC"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=#D8B4FE"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=#FF6B9D"

# ── Initialize Starship prompt ───────────────────────────────

eval "$(starship init zsh)"
