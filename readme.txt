Installation:

   git clone git://github.com/DuganY/dotvim.git ~/.vim

Create symlinks:

   ln -s ~/.vim/vimrc ~/.vimrc
   ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

   cd ~/.vim
   git submodule init
   git submodule update



Installing Vim environment on another machine

cd ~
git clone http://github.com/DuganY/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update



Upgrading a plugin bundle,
Go to the respective repository and pull the latest version.

cd ~/.vim/bundle/fugitive
git pull origin master



Upgrading all bundled plugins
Run the following from the root of all submodule directories.

git submodule foreach git pull origin master
