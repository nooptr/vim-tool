# ----------------------------------"
# author : Ngo Van Thang            "
# email  : thangnvbkhn@gmail.com    "
# ----------------------------------"
#!bin/bash

# Make .git-completion.bash file
dotfiles=(git-completion.bash)
for file in ${dotfiles[*]}
do
    cp git-completion/$file ~/.$file
done

# Install git completion
cat git-completion/git-completion-statement >> $HOME/.bash_profile
