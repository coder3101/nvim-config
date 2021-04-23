" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'vim-airline/vim-airline'
Plug 'sainnhe/gruvbox-material'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/colors.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/nerdtree.vim
source $HOME/.config/nvim/treesitter.vim
