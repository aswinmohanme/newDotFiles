# PATH
# ==================
export PATH="/home/aswinmohanme/.nvm/versions/node/v10.15.0/bin:$PATH"
export PATH="/home/aswinmohanme/.local/bin:$PATH"
export PATH="/home/aswinmohanme/.gem/ruby/2.6.0/bin:$PATH"

# ANDROID
export JAVA_HOME="/usr/lib/jvm/default"
export ANDROID="$HOME/Android"
export ANDROID_HOME="$ANDROID/Sdk"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID/Sdk/platform-tools:$PATH"

# FLUTTER
export FLUTTER_HOME="$HOME/Flutter"
export PATH="$FLUTTER_HOME/flutter/bin:$PATH"


# EDITING
# ==================
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
