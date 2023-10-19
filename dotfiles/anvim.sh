### Install Node js
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y
####

### install neovim
sudo snap install nvim --classic
###

### install tree-sitter
sudo npm install -g tree-sitter-cli
###

###Ohter function
sudo apt install build-essential -y

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

add-apt-repository ppa:daniel-milde/gdu
apt-get update
apt-get install gdu

# x86-64
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_amd64.deb
sudo dpkg -i bottom_0.9.6_amd64.deb

# ARM64
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_arm64.deb
sudo dpkg -i bottom_0.9.6_arm64.deb

# ARM
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_armhf.deb
sudo dpkg -i bottom_0.9.6_armhf.deb

###

#### AstroNvim
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

sudo git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim
###
