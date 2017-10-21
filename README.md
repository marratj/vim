# Bash in WSL - Powerline and vimrc

This is just my personal config for my Windows Subsystem for Linux config. It contains instructions for a working and good-looking powerline in shell and my vimrc.

`git clone https://github.com/powerline/fonts.git`
  
`fonts/install.ps1`

`sudo apt install build-essential python-pip`

`sudo pip install powerline-status` # original powerline for use with vim (doesn't look right for bash in WSL, though)

`sudo pip install powerline-shell` # powerline-shell for use with WSL bash

Add to .bashrc:

```
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux"  ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```

`git clone https://github.com/marratj/vimrc.git ~/.vim/`


