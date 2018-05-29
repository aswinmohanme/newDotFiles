
# PATH
# ==================
set -gx PATH /home/aswinmohanme/.nvm/versions/node/*/bin $PATH

# ANDROID
set --export JAVA_HOME /usr/lib/jvm/java-8-oracle
set --export ANDROID $HOME/Andriod
set --export ANDROID_HOME $ANDROID/Sdk
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID/Sdk/platform-tools $PATH

# EDITING
# ==================
set -gx EDITOR nvim

# VI MODE
function fish_mode_prompt; end
fish_vi_key_bindings

# FZF
set -g -x FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'
set -g -x FZF_CTRL_T_COMMAND 'ag --ignore-case --depth -1 -g ""'
