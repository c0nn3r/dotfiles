export HISTFILESIZE=-1
export HISTSIZE=-1

export VISUAL=nvim
export EDITOR="$VISUAL"

eval "$(/opt/homebrew/bin/brew shellenv)"

PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

source "$HOME/.cargo/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
