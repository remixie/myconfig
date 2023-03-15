require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "javascript", "rust", "vim", "lua" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
