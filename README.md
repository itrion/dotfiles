# Prerequisites
If it's a new Mac, possibly you have to install the Xcode developer tools and accept the terms and conditions. The easiest way to install Xcode developer tools is trying to execute one of those tools so:

```
git --version

# Accept the pop up asking for downloading Xcode developer tools
# then

sudo xcodebuild -license accept
```

if executing git doesn't show any dialog, then you can continue with the installation

# Install
```
cd ~
git clone --recurse-submodules git@github.com:itrion/dotfiles.git .dotfiles
cd .dotfiles
./shine-my-mac
```

