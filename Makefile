

setup:
	mkdir -p ~/.config/alacritty
	mkdir -p ~/.config/fish
	mkdir -p ~/.config/nvim/
	mkdir -p ~/.tmux/

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.config/fish/config.fish ] || ln -s $(PWD)/config.fish ~/.config/fish/config.fish
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/.tmux.conf ~/.tmux.conf
