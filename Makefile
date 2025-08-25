
install-brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-bundle:
	brew bundle --file Brewfile

config:
	mkdir -p ~/.config/fish
	mkdir -p ~/.config/ghostty
	mkdir -p ~/.config/zed
	mkdir -p ~/.claude


	[ -f ~/.config/ghostty/config ] || ln -s $(PWD)/ghostty/ghostty.config ~/.config/ghostty/config
	[ -f ~/.config/zed ] || ln -s $(PWD)/zed/settings.json ~/.config/zed/settings.json
	[ -f ~/.config/fish ] || ln -s $(PWD)/fish/config.fish ~/.config/fish/config.fish
	[ -f ~/.gitconfig ] || ln -s $(PWD)/git/gitconfig ~/.gitconfig

shell:
	echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
	chsh -s /opt/homebrew/bin/fish
