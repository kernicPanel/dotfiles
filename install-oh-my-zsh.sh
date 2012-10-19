command -v zsh >/dev/null 2>&1 || { 
    echo >&2 "\033[01;31mzsh not installed. Aborting…\033[0m"; exit 1;
}

if [ -d ~/.oh-my-zsh ]
then
  echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove ~/.oh-my-zsh if you want to install"
  exit
fi

echo "\033[0;34mSymLinking .oh-my-zsh\033[01;31m"
if ln -s ~/.dotfiles/oh-my-zsh ~/.oh-my-zsh; then
  echo "\033[0mok" >&2
else
  echo "ln -s ~/.dotfiles/oh-my-zsh ~/.oh-my-zsh" >&2
fi
echo "\033[0m";

echo "\033[0;34mSymLinking .zshrc\033[01;31m"
if ln -s ~/.dotfiles/oh-my-zsh/zshrc ~/.zshrc; then
  echo "\033[0mok" >&2
else
  echo "ln -s ~/.dotfiles/oh-my-zsh/zshrc ~/.zshrc" >&2
fi
echo "\033[0m";

echo "\033[0m";

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
echo "export PATH=$PATH" >> ~/.zshrc

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`
echo "\033[0m";

/usr/bin/env zsh
source ~/.zshrc
