
# PATH
# ==================
set -gx PATH /home/aswinmohanme/.nvm/versions/node/*/bin $PATH

# EDITING
# ==================
set -gx EDITOR nvim

# FZF
set -g -x FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'
set -g -x FZF_CTRL_T_COMMAND 'ag --ignore-case --depth -1 -g ""'
