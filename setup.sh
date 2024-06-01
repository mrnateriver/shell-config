#!/bin/sh

# Oh-My-Zsh
# https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
# https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Python OpenAI API CLI client
pipx install openai

# The first empty arg is required on Mac OS/BSD -- remove it for Linux if it causes issues
sed -i '' 's/^\W*plugins=\(.*\)$/plugins=(git azure kubectl kubectx docker docker-compose yarn npm)/g' .zshrc

echo "\n[[ ! -f ~/.zshrc.custom ]] || source ~/.zshrc.custom" >> ~/.zshrc

# Distro-specific, so perform manually
# https://github.com/sharkdp/bat
# https://github.com/ranger/ranger
# https://github.com/junegunn/fzf
# https://github.com/charmbracelet/glow
# Mac OS:
# brew update && brew install bat ranger fzf glow
# Ubuntu:
# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
# echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
# sudo apt update && sudo apt install glow bat ranger fzf
