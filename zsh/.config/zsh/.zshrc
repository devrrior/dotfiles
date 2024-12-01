# ----------------------------------------
# Zsh Configuration
# ----------------------------------------

# Load Zap configuration
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# ----------------------------------------
# Plugins
# ----------------------------------------

# Load plugins using Zap
plug "zsh-users/zsh-autosuggestions"        # Autosuggestions for commands
plug "zap-zsh/supercharge"                  # Performance optimization for Zsh
plug "zap-zsh/zap-prompt"                   # Enhanced Zsh prompt
plug "zsh-users/zsh-syntax-highlighting"    # Syntax highlighting for commands
plug "zap-zsh/vim"                          # Vim keybindings for Zsh
plug "hlissner/zsh-autopair"                # Auto-closing of quotes and brackets
plug "zap-zsh/exa"                          # Integration for `exa` (modern `ls`)
plug "kutsan/zsh-system-clipboard"          # Clipboard support for Zsh
plug "chivalryq/git-alias"                  # Useful Git aliases
plug "wintermi/zsh-brew"                    # Brew package manager enhancements
plug "zap-zsh/nvm"                          # Node Version Manager (NVM) integration
plug "zap-zsh/fzf"                          # Fuzzy finder support (fzf)

# ----------------------------------------
# Completion System
# ----------------------------------------

# Load and initialize the Zsh completion system
autoload -Uz compinit
compinit

# ----------------------------------------
# Environment Variables
# ----------------------------------------

# Add directories to the PATH
export PATH="$HOME/.cargo/bin:$PATH"        # Rust Cargo
export PATH="$HOME/.jenv/bin:$PATH"         # JEnv for Java version management
export PATH="$HOME/.pub-cache/bin:$PATH"    # Flutter Pub cache

# ----------------------------------------
# Initialization
# ----------------------------------------

# Initialize JEnv
eval "$(jenv init -)"

# Initialize Zoxide (smart directory jumping)
eval "$(zoxide init zsh)"