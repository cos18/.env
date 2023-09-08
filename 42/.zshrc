if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GOINFRE="/Users/${USER}/goinfre"

export PATH="${GOINFRE}/app/Visual Studio Code.app/Contents/Resources/app/bin:${PATH}"

# brew
export brewPath="${GOINFRE}"
export HOMEBREW_CACHE="${brewPath}/.brew/cache"
export PATH="${brewPath}/.brew/bin:${PATH}"

export PYENV_ROOT="${GOINFRE}/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export POETRY_CACHE_DIR="${PYENV_ROOT}/Caches"
eval "$(pyenv init -)"

export POETRY_HOME="${GOINFRE}/.poetry"
export PATH="${POETRY_HOME}/bin:$PATH"

export VAGRANT_HOME="${GOINFRE}/.vagrant.d"
export PATH="${GOINFRE}/opt/vagrant/bin:$PATH"
