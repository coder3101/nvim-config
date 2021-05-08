vim.api.nvim_set_keymap('n', '<leader>e', ":NvimTreeToggle<CR>", {})

vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_indent_markers = 1

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
      ["l"]              = tree_cb("edit"),
      ["<C-]>"]          = tree_cb("cd"),
      ["v"]              = tree_cb("vsplit"),
      ["s"]              = tree_cb("split"),
      ["t"]              = tree_cb("tabnew"),
      ["h"]              = tree_cb("close_node"),
      ["I"]              = tree_cb("toggle_ignored"),
      ["H"]              = tree_cb("toggle_dotfiles"),
      ["R"]              = tree_cb("refresh"),
      ["a"]              = tree_cb("create"),
      ["d"]              = tree_cb("remove"),
      ["r"]              = tree_cb("rename"),
      ["<C-r>"]          = tree_cb("full_rename"),
      ["x"]              = tree_cb("cut"),
      ["y"]              = tree_cb("copy"),
      ["p"]              = tree_cb("paste"),
      ["-"]              = tree_cb("dir_up"),
      ["q"]              = tree_cb("close"),
    }
