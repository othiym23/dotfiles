function upgrade-everything --description 'Run all the update commands that can be run without intervention'
    date
    nvim --headless "+Lazy! sync" +qa
    and brew upgrade
    and mas upgrade
    and rustup update
    and asdf latest --all
    and softwareupdate -ia
    and if begin
            chezmoi verify
        end
        echo "No changes to tracked dotfiles."
    else
        echo "Chezmoi status:"
        chezmoi diff --reverse
        chezmoi status
    end
    date
end
