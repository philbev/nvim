--  _                      _ _   _            _             
-- | |_ _ __ ___  ___  ___(_) |_| |_ ___ _ __| |_   _  __ _ 
-- | __| '__/ _ \/ _ \/ __| | __| __/ _ \ '__| | | | |/ _` |
-- | |_| | |  __/  __/\__ \ | |_| ||  __/ | _| | |_| | (_| |
--  \__|_|  \___|\___||___/_|\__|\__\___|_|(_)_|\__,_|\__,_|
--                                                          

-- ~/.config/nvim/lua/setup/treesitter.lua

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = '*',

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
        '#00ff00',
        '#00ffff',
        '#ff00ff',
        '#ffff00',
        '#ffffff',
        '#ff0000',
        '#0000ff',
    }, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  indent = {
      enable = true,
  }
}
