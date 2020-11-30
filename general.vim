" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler								" Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-						" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line numbers
set spell								" Set spell check
set spelllang=en_us						" Use english language for spell check
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set signcolumn=yes						" always show signcolumns
set shortmess+=c						" don't give ins-completion-menu messages.
set relativenumber						" Show relativenumber
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
set diffopt+=vertical 					" Show vim diffs in vertical way.

" You can't stop me
cmap w!! w !sudo tee %

" Let vim know the python interpreter with pynvim
let g:python3_host_prog='/usr/bin/python'

" Theme scheme
colorscheme gruvbox
set background=dark

