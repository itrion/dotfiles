#############################################################
# Generic configuration that applies to all shells
#############################################################

source ~/.shellvars
source ~/.shellfn
source ~/.shellpaths
source ~/.shellaliases

if [ -f ~/.dotfiles/private/.shell ]; then
    source ~/.dotfiles/private/.shell
fi
# Private/Proprietary shell aliases (not to be checked into the public repo) :)
# source ~/Dropbox/private/dotfiles/shellaliases

# Added by `rbenv init` on Mon Dec  2 21:04:16 WET 2024
eval "$(rbenv init - --no-rehash zsh)"
