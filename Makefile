#

init:
	rm -f ~/.cshrc
	ln -fs `pwd`/.cshrc ~/.cshrc
	rm -rf ~/.cshrc.d
	ln -fs `pwd`/.cshrc.d ~/.cshrc.d
	ln -fs `pwd`/.gitconfig ~/.gitconfig
	ln -fs `pwd`/.screenrc ~/.screenrc
	ln -fs `pwd`/.tmux.conf ~/.tmux.conf
	ln -fs `pwd`/.vimrc ~/.vimrc
	ln -fs `pwd`/.vim ~/.vim
	mkdir -p  ~/bin
	ln -fs `pwd`/bin/diff-highlight ~/bin/diff-highlight
	ln -fs `pwd`/bin/createbranch.sh ~/bin/createbranch.sh
	ln -fs `pwd`/bin/deletebranch.sh ~/bin/deletebranch.sh


update:
	git pull
	git push
