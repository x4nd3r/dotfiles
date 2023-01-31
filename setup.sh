# Cheeky little setup script to grab scripts, plugins, or libraries that
# shouldn't be kept in my own dotfiles.

# vim slime
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/jpalardy/vim-slime.git

# R colorout library
cd ~/
git clone https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
rm -rf colorout
