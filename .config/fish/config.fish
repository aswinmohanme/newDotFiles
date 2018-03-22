
# ==================
# PATH
# ==================
set -gx PATH /home/aswinmohanme/.yarn/bin $PATH
set -gx PATH /home/aswinmohanme/.local/bin $PATH
set -gx PATH /home/aswinmohanme/.nvm/versions/node/v8.5.0/bin $PATH

# ANDROID
set -x ANDROID_HOME /home/aswinmohanme/Android/Sdk
set -gx PATH /home/aswinmohanme/Android/Sdk/tools $PATH
set -gx PATH /home/aswinmohanme/Android/Sdk/platform-tools $PATH

# Anaconda
source /home/aswinmohanme/anaconda3/etc/fish/conf.d/conda.fish

# FZF
set -g -x FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'
set -g -x FZF_CTRL_T_COMMAND 'ag --ignore-case --depth -1 -g ""'
