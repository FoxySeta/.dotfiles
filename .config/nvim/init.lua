require'visimp'{
  autopairs = {},
  colorizer = {
    user_default_options = {
      tailwind = true
    }
  },
  defaults = {
    foldmethod = 'marker',
    tabsize = 2
  },
  diagnostics = {},
  indentline = {},
  gitsigns = {},
  grammarly = {},
  latex = {
    texlive = true
  },
  languages = {
    'bash',
    'c',
    'css',
    'go',
    'html',
    'javascript',
    'latex', 
    'lua',
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
    package = 'foxyseta/reddish-fox.nvim',
    colorscheme = 'reddish-fox',
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
