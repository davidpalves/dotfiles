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

# Dell G3 Keyboard Lightning management
kbacklight () {
        if [[ -n $1 ]]
        then
                echo $1s | sudo tee /sys/devices/platform/dell-laptop/leds/dell\:\:kbd_backlight/stop_timeout
        else 
                echo "120s" | sudo tee /sys/devices/platform/dell-laptop/leds/dell\:\:kbd_backlight/stop_timeout
        fi
}
