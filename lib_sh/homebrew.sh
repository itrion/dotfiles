function homebrew.download-and-install(){
    action "installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    if [[ $? != 0 ]]; then
        error "unable to install homebrew, script $0 abort!"
        exit 2
    fi
}

function homebrew.upgrade(){
    ok
    # Make sure we’re using the latest Homebrew
    running "updating homebrew"
    brew update
    ok
    bot "before installing brew packages, we can upgrade any outdated packages."
    read -r -p "run brew upgrade? [y|N] " response
    if [[ $response =~ ^(y|yes|Y) ]];then
        # Upgrade any already-installed formulae
        action "upgrade brew packages..."
        brew upgrade
        ok "brews updated..."
    else
        ok "skipped brew package upgrades.";
    fi
}

function homebrew.install-brew(){
    running "checking homebrew install"
    brew_bin=$(which brew) 2>&1 > /dev/null
    if [[ $? != 0 ]]; then
        homebrew.download-and-install
    else
        homebrew.upgrade
    fi
}

function homebrew.install-cask(){
    brew tap homebrew/cask-fonts
    ok
}
