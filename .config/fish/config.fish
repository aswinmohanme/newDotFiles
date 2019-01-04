
# PATH
# ==================
set -gx PATH /home/aswinmohanme/.nvm/versions/node/*/bin $PATH
set -gx PATH /home/aswinmohanme/.local/bin $PATH

# ANDROID
set --export JAVA_HOME /usr/lib/jvm/default
set --export ANDROID $HOME/Android
set --export ANDROID_HOME $ANDROID/Sdk
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID/Sdk/platform-tools $PATH

# FLUTTER
set --export FLUTTER_HOME $HOME/Flutter
set -gx PATH $FLUTTER_HOME/flutter/bin $PATH


# EDITING
# ==================
set -gx EDITOR nvim

# VI MODE
function fish_mode_prompt; end
#fish_vi_key_bindings

# FZF
set -g -x FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'
set -g -x FZF_CTRL_T_COMMAND 'ag --ignore-case --depth -1 -g ""'

# NVIM JUNK CHARACTERS FIX
export VTE_VERSION="402"
