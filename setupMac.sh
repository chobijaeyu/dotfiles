#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#install zsh and oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install zsh plug and theme
git clone  --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone  --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone  --depth=1 https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Charles proxy
brew cask install charles


#install chrome vscode docker and etc.
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install discord
brew cask install docker
brew cask install qutebrowser
brew cask install google-cloud-sdk
brew cask install postman

#install Development
brew install pyenv go autojump node yarn htop angular-cli fzf tree

#install pyenv-virtualenv
git clone --depth=1 https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

#install tmuxconf
git clone  --depth=1 https://github.com/jinchizhong/my-tmux
ln -s <some-where>/my-tmux/tmux.conf ~/.tmux.conf

#install vimconf
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#get zshrc
git clone  --depth=1 https://github.com/chobijaeyu/dotfiles.git ~/
mv .zshrc ~/.zshrc
rm -rf ~/dotfiles