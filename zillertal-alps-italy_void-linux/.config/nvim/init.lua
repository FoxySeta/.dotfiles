require'visimp'{
  defaults = {
    foldmethod = 'marker',
    tabsize = 4
  },
  diagnostics = {},
  gitsigns = {},
  latex = {
    tectonic = true
  },
  languages = {
    'bash',
    'c',
    'javascript',
    'latex', 
    'python'
  },
  lsp = {
    nullls = {
      'formatting.black',
      'formatting.prettier',
      'formatting.latexindent'
    }
  },
  lspformat = {},
  lspsignature = {},
  outline = {},
  snippet = {},
  theme = {'haishanh/night-owl.vim', 'night-owl', 'dark'}
}

-- diagnostics
binds = {
  [{ mode = 'n', bind = '<leader>xx'}] = '<cmd>TroubleToggle<cr>',
  [{ mode = 'n', bind = '<leader>xw'}] =
    '<cmd>Trouble workspace_diagnostics<cr>',
  [{ mode = 'n', bind = '<leader>xd'}] =
    '<cmd>Trouble document_diagnostics<cr>',
  [{ mode = 'n', bind = '<leader>xl'}] = '<cmd>Trouble loclist<cr>',
  [{ mode = 'n', bind = '<leader>xq'}] = '<cmd>Trouble quickfix<cr>',
  [{ mode = 'n', bind = '<leader>gR'}] = '<cmd>Trouble lsp_references<cr>',
}

-- snippets
local luasnip = require'luasnip'
local snippet = luasnip.snippet
local text_node = luasnip.text_node
luasnip.snippets = {
}
