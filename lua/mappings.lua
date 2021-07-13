local nnoremap = function(key, action)
	vim.api.nvim_set_keymap('n', key, action, {noremap = true, silent=true})
end

local inoremap = function(key, action)
	vim.api.nvim_set_keymap('i', key, action, {noremap = true, silent=true})
end

local tnoremap = function(key, action)
	vim.api.nvim_set_keymap('t', key, action, {noremap = true, silent=true})
end

local vnoremap = function(key, action)
	vim.api.nvim_set_keymap('v', key, action, {noremap = true, silent=true})
end

-- Setup leader
nnoremap('<Space>', '<NOP>')
vim.g.mapleader = " "

-- Normal mode remaps
nnoremap("<M-Down>", ":resize -2<CR>")
nnoremap("<M-Up>", ":resize +2<CR>")
nnoremap("<M-Left>", ":vertical resize +2<CR>")
nnoremap("<M-Right>", ":vertical resize -2<CR>")
nnoremap("<C-u>", "viwU<Esc>")
nnoremap("<Tab>", ":bnext<CR>")
nnoremap("<S-Tab>", ":bprevious<CR>")
nnoremap("<C-h>","<C-w>h")
nnoremap("<C-j>","<C-w>j")
nnoremap("<C-k>","<C-w>k")
nnoremap("<C-l>","<C-w>l")
 -- Normal mode, leader based remaps
nnoremap("<leader>t", ":terminal<CR>")
nnoremap("<leader>j", ":cn<CR>")
nnoremap("<leader>k", ":cp<CR>")
nnoremap("<leader>gs", ":G<CR>")
nnoremap("<leader>gf", ":diffget //2<CR>")
nnoremap("<leader>gj", ":diffget //3<CR>")
nnoremap("<leader>/", ":Commentary<CR>")
nnoremap("<leader>o", "o<Esc>0_D")
nnoremap("<leader>O", "O<Esc>0_D")
nnoremap("<leader>u", ":UndotreeToggle<CR>")

-- Insert mode remap
inoremap("jj", "<Esc>")
inoremap("<C-u>", "<Esc>viwUi")

-- Terminal mode remap
tnoremap("jj", "<C-\\><C-N>")
tnoremap("<C-h>","<C-\\><C-N><C-w>h")
tnoremap("<C-j>","<C-\\><C-N><C-w>j")
tnoremap("<C-k>","<C-\\><C-N><C-w>k")
tnoremap("<C-l>","<C-\\><C-N><C-w>l")

-- Visual Mode remaps
vnoremap("<leader>/", ":Commentary<CR>")
vnoremap("<", "<gv")
vnoremap(">", ">gv")

