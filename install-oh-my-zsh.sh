command -v zsh >/dev/null 2>&1 || { 
    echo >&2 "\033[01;31mzsh not installed. Aborting…\033[0m"; exit 1;
}

echo "\033[0;34mSymLinking .oh-my-zsh\033[01;31m"
ln -s ~/.dotfiles/oh-my-zsh ~/.oh-my-zsh;
echo "\033[0m";

echo "\033[0;34mSymLinking .zshrc\033[01;31m"
ln -s ~/.dotfiles/oh-my-zsh/zshrc ~/.zshrc;
echo "\033[0m";

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`
echo "\033[0m";

