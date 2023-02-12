local wezterm = require 'wezterm'

return {
  font = wezterm.font_with_fallback {
    'Iosevka Term SS08',
    'Noto Color Emoji',
    -- 'FontAwesome',
  },
  font_size = 14,
  default_cwd = "/home/foxy/desktop/",
    colors = {
    -- The default text color
    foreground = 'white',
    -- The default background color
    background = 'black',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = 'darkred',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = 'lightpink',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = 'black',

    -- the foreground color of selected text
    selection_fg = 'black',
    -- the background color of selected text
    selection_bg = 'lightgrey',

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = '#222222',

    -- The color of the split lines between panes
    split = 'red',

    ansi = {
      'black',
      '#9f0000',
      '#cc0066',
      '#cc6600',
      '#af5f5f',
      '#af0000',
      '#aa4538',
      '#606060',
    },
    brights = {
      '#c2c2c2',
      '#ff4d4d',
      '#ff99cc',
      '#ffbf80',
      '#d78787',
      '#d75f5f',
      '#ff875f',
      'white',
   },
  },
  enable_tab_bar = false,
  unicode_version = 14,
  window_close_confirmation = "NeverPrompt"
}
