# ----------------------------------"
# author : Ngo Van Thang            "
# email  : thangnvbkhn@gmail.com    "
# ----------------------------------"

#!bin/bash

# Check if bundle and autoload folder not existed then create these folder
if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim
    mkdir -p ~/.vim/autoload
fi

if [ ! -d ~/.vim/bundle ]; then
    mkdir -p ~/.vim/bundle
fi

if [ ! -d ~/.vim/autoload ]; then
    mkdir -p ~/.vim/autoload
fi

# Setting Vundle (package manager in Vim)
# URL Reference : https://github.com/gmarik/Vundle.vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Setting pathogen for syntax checker (eg : PHP, C, C++, JSON, JavaScript ....)
# URL Reference : https://github.com/scrooloose/syntastic
if [ ! -d ~/.vim/autoload/pathogen.vim ]; then
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Make .vimrc file
dotfiles=(vimrc)
for file in ${dotfiles[*]}
do
    cp $file ~/.$file
done


# Install plugins in vundle
vim +PluginInstall +qall

echo "DONE!"
