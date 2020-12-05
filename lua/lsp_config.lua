local lsp = require("lspconfig")

local map = function(type, key, value)
	vim.fn.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end

local custom_attach = function(client)
	print("Language Server has been attached");
	require'completion'.on_attach(client)

	map('n','<leader>gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
	map('n','<leader>gd','<cmd>lua vim.lsp.buf.definition()<CR>')
	map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
	map('n','<leader>gr','<cmd>lua vim.lsp.buf.references()<CR>')
	map('n','<leader>gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
	map('n','<leader>gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
	map('n','<leader>gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
	map('n','<leader>n', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
	map('n','<leader>N', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
	map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
	map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
	map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
	-- map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
	map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
	map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
	-- map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
	-- map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
end

lsp.clangd.setup{on_attach=custom_attach}
lsp.cmake.setup{on_attach=custom_attach}
lsp.pyls.setup{on_attach=custom_attach}
lsp.rls.setup{on_attach=custom_attach}
lsp.vimls.setup{on_attach=custom_attach}
lsp.sumneko_lua.setup{
	on_attach=custom_attach,
	settings = {
		Lua = {
			runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
			completion = { keywordSnippet = "Disable", },
			diagnostics = { enable = true, globals = {
				"vim", "describe", "it", "before_each", "after_each" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				}
			}
		}
	}
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  }
)
