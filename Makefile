# Update all submodules
update-sub:
	git submodule init
	git submodule update
	git submodule foreach git submodule init
	git submodule foreach git submodule update

install-vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ./vim/bundle/Vundle.vim

setup: install-vundle
	ln -s `pwd`/vim/vimrc $HOME/.vimrc
	ln -s `pwd`/vim $HOME/.vim

install-vim-plug:
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
