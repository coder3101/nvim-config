local cmd = vim.api.nvim_command

cmd("syntax enable")

-- Global Settings
vim.o.hidden = true
vim.o.hlsearch = false
vim.o.pumheight = 15
vim.o.ruler = true
vim.o.cmdheight = 2
vim.o.mouse = "a"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.smarttab = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.clipboard = "unnamedplus"
vim.o.scrolloff = 8
cmd("set diffopt+=vertical")

-- Buffer level settings
vim.bo.fileencoding = "utf-8"
vim.bo.tabstop = 4
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.smartindent = true
vim.bo.autoindent = true
cmd("set iskeyword+=-")

-- Window level settings
vim.wo.conceallevel = 0
vim.wo.number = true
vim.wo.signcolumn = "yes"
vim.wo.relativenumber = true
vim.wo.wrap = false
