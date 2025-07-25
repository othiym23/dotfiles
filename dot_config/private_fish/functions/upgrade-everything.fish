function upgrade-everything --description 'Run all the update commands that can be run without intervention'
date
and brew upgrade
and mas upgrade
and nvim --headless "+Lazy! sync" +qa
and rustup update
and asdf latest --all
if begin chezmoi verify ; end
	echo "No changes to tracked dotfiles."
else
	echo "Chezmoi status:"
	chezmoi status
end
date
end
