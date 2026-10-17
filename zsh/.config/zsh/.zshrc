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
plug "zap-zsh/fzf"                          # Fuzzy finder support (fzf)

# Los plugins activan extended_glob y eso rompe nvm (nvm_alias: bad pattern)
unsetopt extended_glob

# ----------------------------------------
# Completion System
# ----------------------------------------
autoload -Uz compinit
compinit

# ----------------------------------------
# Environment Variables
# ----------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export ANDROID_HOME="$HOME/Library/Android/sdk"

export PATH="$HOME/.cargo/bin:$PATH"        # Rust Cargo
export PATH="$HOME/.jenv/bin:$PATH"         # JEnv for Java version management
export PATH="$HOME/.pub-cache/bin:$PATH"    # Flutter Pub cache
export PATH="$PYENV_ROOT/bin:$PATH"         # PyEnv for Python version management
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# ----------------------------------------
# NVM
# ----------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ----------------------------------------
# Initialization
# ----------------------------------------
eval "$(jenv init -)"
eval "$(zoxide init zsh)"
eval "$(pyenv init - zsh)"

# ----------------------------------------
# Aliases
# ----------------------------------------
alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"
