terminal:
	# Install zsh
	@echo "----- Installing ZSH -----"
	@apt install zsh
	chsh -s $(which zsh)
	# Install oh my zsh
	@echo "----- Installing oh my ZSH -----"
	@sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	# Install alacritty
	@echo "----- Installing Alacritty -----"
	@apt install alacritty 
	# Install tmux
	@echo "----- Installing TMUX -----"
	@apt install tmux	
	# copy config files
	@echo "----- Setting up config files -----"
	@ln -s ~/Dotfiles/alacritty/.alacritty.yml ~/.alacritty.yml
	@ln -s ~/Dotfiles/tmux/.tmux.conf ~/.tmux.conf
		
	@echo "----- Finished setting-up terminal -----"
