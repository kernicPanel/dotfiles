if [ -d ~/.dotfiles ]
then
  echo "\033[0;33mYou already have a .dotfiles folder.\033[0m You'll need to remove ~/.dotfiles if you want to install"
  exit
fi

echo "\033[0;34mCloning dotfiles...\033[0m"
hash git >/dev/null && /usr/bin/env git clone git@github.com:kernicPanel/dotfiles.git ~/.dotfiles || {
  echo "git not installed"
  exit
}

cd .dotfiles;
git submodule update --init;

cd ~;
pwd;
echo "\033[0;36m-- SymLinking vim --\033[0m"
~/.dotfiles/install-vim.sh;
echo "";

echo "\033[0;36m-- SymLinking zsh --\033[0m"
~/.dotfiles/install-oh-my-zsh.sh;
echo "";
