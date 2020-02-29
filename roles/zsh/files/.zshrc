export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pi"

plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
        git
        django
        pipenv
        python
        tmux
        zsh-z
)

[[ $TERM != "screen" ]] && exec tmux

source $ZSH/oh-my-zsh.sh

export WORKON_HOME=~/venvs
export PATH=~/.npm-global/bin:$PATH
export PATH="/home/david/.pyenv/bin:$PATH"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


source "$HOME/.dotfiles/dotfiles.sh"
