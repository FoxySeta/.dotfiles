require'visimp'{
  defaults = {
    foldmethod = 'marker'
  },
  diagnostics = {},
  gitsigns = {},
  latex = {
    tectonic = true
  },
  languages = {
    'bash',
    'c',
    'latex', 
    'python'
  },
  lspsignature = {},
  outline = {},
  snippet = {},
  theme = {'haishanh/night-owl.vim', 'night-owl', 'dark'}
}

-- diagnostics
vim.api.nvim_set_keymap('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>',
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>',
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap('n', '<leader>xl', '<cmd>Trouble loclist<cr>',
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap('n', '<leader>xq', '<cmd>Trouble quickfix<cr>',
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap('n', 'gR', '<cmd>Trouble lsp_references<cr>',
  {silent = true, noremap = true}
)
