if status is-interactive
    # Commands to run in interactive sessions can go here
end

# opam configuration
source /Users/ogd/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -gx EDITOR nvim
