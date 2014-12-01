# ----------------------------------"
# author : Ngo Van Thang            "
# email  : thangnvbkhn@gmail.com    "
# ----------------------------------"
#!bin/bash

######## Install color for Terminal or iTerm


# Make .vimrc file
dotfiles=(bash_profile bash_prompt aliases)
for file in ${dotfiles[@]}
do
    cp bash/$file $HOME/.$file
done
