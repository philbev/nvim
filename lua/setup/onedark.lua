--                       _            _      _             
--   ___  _ __   ___  __| | __ _ _ __| | __ | |_   _  __ _ 
--  / _ \| '_ \ / _ \/ _` |/ _` | '__| |/ / | | | | |/ _` |
-- | (_) | | | |  __/ (_| | (_| | |  |   < _| | |_| | (_| |
--  \___/|_| |_|\___|\__,_|\__,_|_|  |_|\_(_)_|\__,_|\__,_|
--                                                         

-- ~/.config/nvim/lua/setup/onedark.lua

local status_ok,onedark = pcall(require, 'onedark')
if not status_ok then
    return
end

onedark.setup  {
    -- Main options --
    style = 'warm', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    -- toggle theme style ---
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups
      -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
