set -gx fish_user_paths ~/.local/scripts ~/.local/bin ~/go/bin ~/.cargo/bin /opt/flutter/bin ~/.pub-cache/bin $fish_user_paths /opt/homebrew/bin ~/snap/bin /usr/local/go/bin/bin/

set -u fish_color_command blue
set -u fish_color_command_current cyan
set -u fish_color_autosuggestion brblack
function fish_user_key_bindings
    fish_vi_key_bindings
end

if status is-interactive
    atuin init fish | source
end

if status is-interactive
    and not set -q TMUX
    exec tmux new-session -A -s main
end

# ---- pyenv ----
set -Ux PYENV_ROOT $HOME/.pyenv

# Make pyenv available
if test -d $PYENV_ROOT/bin
    fish_add_path $PYENV_ROOT/bin
end

# Initialize pyenv only if it exists
if status --is-interactive; and command -q pyenv
    pyenv init - | source
end
