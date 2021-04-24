local actions = require('telescope.actions')
local M = {}
M.neovimrc = function()
    require('telescope.builtin').find_files({
        prompt_title = "< NeoVimRC >",
        cwd = "~/.config/nvim/"
    })
end

M.git_branches = function()
    require('telescope.builtin').git_branches({
        attach_mappings = function(prompt_bufrn, map)
            map('i', '<c-d>', actions.git_delete_branch)
            map('n', 'dd', actions.git_delete_branch)
            return true
        end
    })
end
return M

