# Bash in WSL - Powerline and vimrc

This is just my personal config for my Windows Subsystem for Linux config. It contains instructions for a working and good-looking powerline in shell and my vimrc.

```
git clone https://github.com/powerline/fonts.git

fonts/install.ps1

sudo apt install build-essential python-pip

pip install powerline-status # original powerline for use with vim (doesn't look right for bash in WSL, though)

pip install powerline-shell # powerline-shell for use with WSL bash
```

Add to .bashrc:

```
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux"  ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```

# Bash on macOS

Install Python with Homebrew

`brew install python`

Install Powerline-Status

`pip2 install powerline-status`

Add to .bash_profile:

```
# Start Powerline

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

```



`git clone https://github.com/marratj/vimrc.git ~/.vim/`


## Install pathogen.vim

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

## Install vim-terraform

```
cd ~/.vim/bundle
git clone https://github.com/hashivim/vim-terraform.git
```

## Install vim-markdown

```
cd ~/.vim/bundle
git clone https://github.com/plasticboy/vim-markdown.git
```

## Install NERDtree

```
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

```
