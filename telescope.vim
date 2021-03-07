lua require("telescope_config")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep for Project > ") })<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>") })<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>rc :lua require('telescope_config').neovimrc()<CR>
nnoremap <leader>gc :lua require('telescope_config').git_branches()<CR>
