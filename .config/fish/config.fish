
# PATH
# ==================
set -gx PATH /home/aswinmohanme/.nvm/versions/node/*/bin $PATH

# EDITING
# ==================
set -gx EDITOR nvim

# FZF
set -g -x FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'
set -g -x FZF_CTRL_T_COMMAND 'ag --ignore-case --depth -1 -g ""'

# VIM
# note: this erases the default fish_mode_prompt, which adds a vi mode
# indicator to the left of your prompt
function fish_mode_prompt; end

# turn on vi mode when the shell starts
fish_vi_key_bindings
