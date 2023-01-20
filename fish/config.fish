if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nano

# Uncomment if using Starship.
# starship init fish | source

# Uncomment if asdf is intalled via homebrew.
# source /usr/local/opt/asdf/libexec/asdf.fish

source ~/.config/fish/functions/__node_binpath_cwd.fish
