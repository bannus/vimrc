Bannus's vimrc
---

## Installation:

    mkdir ~/.vim
    git clone git://github.com/bannus/vimrc.git ~/.vim
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    vim +BundleInstall +qall

On Windows, use ~/vimfiles instead of ~/.vim and ~/\_vimrc instead of ~/.vimrc.

## Color Schemes

The default color scheme is [Smyck](https://github.com/hukl/Smyck-Color-Scheme/), which looks best with the corresponding terminal theme installed as well.

Other available (awesome) colorschemes:

* jellybeans
* skittles\_dark
* molokai
* wombat256mod

## Shortcuts

* `;` maps to `:`
* `,m`: Disable mouse editing/line numbers for copy paste
* `,c<space>`: Toggle comments
* `,e`: Open file in new tab
* `,l`: Toggle NERDTree
* `,ig`: Toggle indentation guide
* `,k`: Syntax-check the current file
* `,p`: Disable mouse support for copying
* `,o`: Open file
* `,s`: Split window
* `,t`: New tab
* `,w`: Close tab
* `kj`: Switch to normal mode and save
* `Ctrl+{h,j,k,l}`: Move among windows
