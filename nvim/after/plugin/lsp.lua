local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
	vim.keymap.set('n', '<shift-enter>', '<cmd>lua vim.lsp.buf.code_action()<cr>', {buffer=bufnr}) 
end)



-- lsp-zero will also setup autocompletion

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'tsserver', 'rust_analyzer', 'clangd', 'pyright'},
  handlers = {
    lsp_zero.default_setup,
  }
})
