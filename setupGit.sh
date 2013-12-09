sudo apt-get install git-core 
read -p "Enter username ie kyleotoole: " usr
read -p "Enter email ie kyle-360@hotmail.com: " eml
git config --global user.name $usr
git config --global user.email $eml
cd ~/.ssh
ssh-keygen -t rsa -C $usr
ssh-add id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub
read -p "Key in clipboard. Press enter when key added github acc ..."
ssh -T git@github.com
cd
cd Desktop
git clone git@github.com:kyleotoole/RichWebGlenKyle.git
