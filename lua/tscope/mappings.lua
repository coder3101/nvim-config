local extras = require('tscope.extras')
local builtin = require('telescope.builtin')

local opts = {silent=true, noremap=true}
vim.api.nvim_set_keymap('n', '<leader>ps', [[<Cmd>lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep for Project > ")})<CR>]], opts)
vim.api.nvim_set_keymap('n','<C-p>', [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], opts)
vim.api.nvim_set_keymap('n','<leader>pf', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
vim.api.nvim_set_keymap('n','<leader>pw', [[<Cmd>lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>") })<CR>]], opts)
vim.api.nvim_set_keymap('n','<leader>pb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
vim.api.nvim_set_keymap('n','<leader>rc', [[<Cmd>lua require('tscope.extras').neovimrc()<CR>]], opts)
vim.api.nvim_set_keymap('n','<leader>gc', [[<Cmd>lua require('tscope.extras').git_branches()<CR>]], opts)
