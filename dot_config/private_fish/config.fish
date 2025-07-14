if status is-interactive
    # Commands to run in interactive sessions can go here
end

# opam configuration
source /Users/ogd/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -gx EDITOR nvim

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
