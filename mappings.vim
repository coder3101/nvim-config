" set leader key
let g:mapleader = "\<Space>"

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Vim-Commentry
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" Fugitive remaps for conflict resolution and other stuff
nmap <leader>gs :G <CR>
nmap <leader>gf :diffget //2 <CR>
nmap <leader>gj :diffget //3 <CR>

" Telescope remaps
" nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep for Project") })<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
" nnoremap <leader>pw :lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>") })<CR>
" nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
