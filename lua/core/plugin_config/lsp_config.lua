require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
	"lua_ls", "rust_analyzer", "eslint", "volar"}})

local on_attach = function(_, _)
   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
  Lua = {
  diagnostics = { globals = { 'vim' }}}
  }
}
