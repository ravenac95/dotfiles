# Update all submodules
update-sub:
	git submodule init
	git submodule update
	git submodule foreach git submodule init
	git submodule foreach git submodule update

install-vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ./vim/bundle/Vundle.vim
