cd ~;
git clone git@github.com:kernicPanel/dotfiles.git .dotfiles;
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
