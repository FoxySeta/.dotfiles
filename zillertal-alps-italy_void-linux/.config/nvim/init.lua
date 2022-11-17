require'visimp'{
  autopairs = {},
  colorizer = {
    user_default_options = {
      tailwind = true
    }
  },
  defaults = {
    foldmethod = 'marker',
    tabsize = 4
  },
  diagnostics = {},
  indentline = {},
  gitsigns = {},
  grammarly = {},
  latex = {
    tectonic = true
  },
  languages = {
    'bash',
    'c',
    'css',
    'go',
    'html',
    'javascript',
    'latex', 
    'python',
    'rust',
    'vue'
  },
  lsp = {
    nullls = {
      'formatting.black',
      'formatting.prettier',
      'formatting.latexindent'
    }
  },
  outline = {},
  snippet = {},
  theme = {
    package = 'haishanh/night-owl.vim',
    colorscheme = 'night-owl',
    background = 'dark'
  }
}

-- diagnostics
binds = {
  [{ mode = 'n', bind = '<leader>tx'}] = '<cmd>TroubleToggle<cr>',
  [{ mode = 'n', bind = '<leader>tw'}] =
    '<cmd>Trouble workspace_diagnostics<cr>',
  [{ mode = 'n', bind = '<leader>td'}] =
    '<cmd>Trouble document_diagnostics<cr>',
  [{ mode = 'n', bind = '<leader>tl'}] = '<cmd>Trouble loclist<cr>',
  [{ mode = 'n', bind = '<leader>tq'}] = '<cmd>Trouble quickfix<cr>',
  [{ mode = 'n', bind = '<leader>gR'}] = '<cmd>Trouble lsp_references<cr>',
}

-- snippets
local luasnip = require'luasnip'
local snippet = luasnip.snippet
local text_node = luasnip.text_node
luasnip.snippets = {
}
