# load zgen
source "${HOME}/repos/zshrc/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh
    zgen oh-my-zsh plugins/cp
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/mercurial
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/bower
    zgen oh-my-zsh plugins/coffee
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/node
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/brew


    # plugins
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load chrissicool/zsh-256color
    zgen load zsh-users/zsh-history-substring-search
    zgen load peterhurford/git-it-on.zsh

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/arrow

    # autosuggestions should be loaded last
    zgen load tarruda/zsh-autosuggestions

    # save all to init script
    zgen save
fi

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
export PATH="/usr/local/sbin:$PATH"
