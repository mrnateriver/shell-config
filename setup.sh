#!/bin/sh

# Oh-My-Zsh
# https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
# https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Python OpenAI API CLI client
pipx install openai

sed -i 's/^\W*plugins=\(.*\)$/plugins=(git azure kubectl kubectx docker docker-compose yarn npm)/g' .zshrc

echo "\n[[ ! -f ~/.zshrc.custom ]] || source ~/.zshrc.custom" >> ~/.zshrc

# Distro-specific, so perform manually
# https://github.com/sharkdp/bat
# https://github.com/ranger/ranger
# sudo apt update && sudo apt install bat ranger

