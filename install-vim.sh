echo "\033[0;34mSymLinking .vim\033[01;31m"
if ln -s ~/.dotfiles/vim-config/vim ~/.vim; then
  echo "\033[0mok" >&2
else
  echo "ln -s ~/.dotfiles/vim-config/vim ~/.vim" >&2
fi
echo "\033[0m";

echo "\033[0;34mSymLinking .vimrc\033[01;31m"
if ln -s ~/.dotfiles/vim-config/vimrc ~/.vimrc; then
  echo "\033[0mok" >&2
else
  echo "ln -s ~/.dotfiles/vim-config/vimrc ~/.vimrc" >&2
fi
echo "\033[0m";

echo "\033[0m";
