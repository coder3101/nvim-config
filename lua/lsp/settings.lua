-- Pum visible for autocomplete insertion
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end
function _G.smart_shift_tab()
    return vim.fn.pumvisible() == 1 and t'<C-p>' or t'<S-Tab>'
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr=true, noremap=true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.smart_shift_tab()', {expr=true, noremap=true})

-- For better completion experiences
-- Options
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"

-- Variables
vim.g.completion_matching_strategy_list = {"exact","substring","fuzzy"}
vim.g.completion_matching_smart_case = 1
