" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'jistr/vim-nerdtree-tabs'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Code folding
    Plug 'tmhedberg/SimpylFold'
    " Support Python indenting
    Plug 'vim-scripts/indentpython.vim'
    " Syntax checking
    Plug 'vim-syntastic/syntastic'
    " Python syntax checking
    Plug 'nvie/vim-flake8'
    " Sonokai colorscheme
    Plug 'sainnhe/sonokai'
    " Fuzzy file finder
    Plug 'kien/ctrlp.vim'
    " Vim Git support
    Plug 'tpope/vim-fugitive'
    " Status bar
    Plug 'vim-airline/vim-airline'
    " Intellisense code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " VimTeX - a Neovim filetype and syntax plugin for LaTeX files
    Plug 'lervag/vimtex'

call plug#end()
