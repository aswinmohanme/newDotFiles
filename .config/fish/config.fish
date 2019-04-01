# VI MODE
function fish_mode_prompt; end
#fish_vi_key_bindings

# SOURCE PROFILE
bass source ~/.profile

# FZF
set -g -x FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'
set -g -x FZF_CTRL_T_COMMAND 'ag --ignore-case --depth -1 -g ""'

# NVIM JUNK CHARACTERS FIX
#export VTE_VERSION="402"

# EMACS
# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

# this function may be required
function fish_title
  true
end
