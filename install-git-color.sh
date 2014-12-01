# ----------------------------------"
# author : Ngo Van Thang            "
# email  : thangnvbkhn@gmail.com    "
# ----------------------------------"
#!bin/bash

######## Install color for git

# Make .gitconfig file
dotfiles=(gitconfig)
for file in ${dotfiles[@]}
do
    cp git-color/$file $HOME/.$file
done
