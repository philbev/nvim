--              _                           _       _             
--   __ _ _   _| |_ ___   ___ _ __ ___   __| |___  | |_   _  __ _ 
--  / _` | | | | __/ _ \ / __| '_ ` _ \ / _` / __| | | | | |/ _` |
-- | (_| | |_| | || (_) | (__| | | | | | (_| \__ \_| | |_| | (_| |
--  \__,_|\__,_|\__\___/ \___|_| |_| |_|\__,_|___(_)_|\__,_|\__,_|
--                                                                

-- ~/.config/nvim/lua/setup/autocmds.lua

local au = vim.api.nvim_create_autocmd

-- Highlight yanked text
au({ 'TextYankPost' }, {
    pattern = { '*' },
    command = "lua vim.highlight.on_yank({ timeout = 1000, higroup = IncSearch })",
})

-- Display cursorline on active windows only.
au({ 'BufEnter', 'WinEnter' }, {
    pattern = '*',
    command = "lua vim.o.cursorline = true"
})
au({ 'WinLeave' }, {
    pattern = '*',
    command = "lua vim.o.cursorline = false"
})

-- No comments to be generated after 'o' or after hitting 'Enter'.
au({ 'FileType' }, {
    pattern = '*',
    command = "lua vim.opt.formatoptions:remove { 'r', 'o' }"
})

-- Use <Space> and 'b' keys to page forward and back in read-only buffers.
au({ 'FileType' }, {
    pattern = { 'packer', 'checkhealth', 'help' },
    command = "lua vim.keymap.set('n', '<Space>', '<C-f>', { noremap = true, silent = true, buffer = 0 })"
})
au({ 'FileType' }, {
    pattern = { 'packer', 'checkhealth', 'help' },
    command = "lua vim.keymap.set('n', 'b', '<C-b>', { noremap = true, silent = true, buffer = 0 })"
})

-- Hit <Esc> key to quit packer, help and checkhealth.
au({ 'FileType' }, {
    pattern = { 'packer', 'help', 'checkhealth' },
    command = "lua vim.keymap.set('n', '<Esc>', '<cmd>q<cr>', { noremap = true, silent = true, buffer = 0 })"
})

-- Use 'Enter' key to follow hyperlinks.
au({ 'FileType' }, {
    pattern = { 'help' },
    command = "lua vim.keymap.set('n', '<cr>', '<C-]>', { noremap = true, silent = true, buffer = 0 })"
})

-- 'Insert' key moves cursor to next hyperlink.
au({ 'FileType' }, {
    pattern = { 'help' },
    command = "lua vim.keymap.set('n', '<Insert>', '/|[^|]*|<cr>:nohlsearch<cr>', { noremap = true, silent = true, buffer = 0 })"
})

-- 'Del' key moves cursor to previous hyperlink.
au({ 'FileType' }, {
    pattern = { 'help' },
    command = "lua vim.keymap.set('n', '<Del>', '?|[^|]*|<cr>:nohlsearch<cr>', { noremap = true, silent = true, buffer = 0 })"
})

au({'FileType'}, {
    pattern = {'lua'},
    command = "lua vim.keymap.set('n', '<F5>', '<cmd>w | terminal lua %<cr>a', { noremap = true, silent = true, buffer = 0 })"
})

--cmd({'BufNewFile'}, {
--    pattern = {'*.lua'},
--    command = "0r ~/.config/nvim/template/skeleton.lua"
--})

au({'FileType'}, {
    pattern = {'python'},
    command = "lua vim.keymap.set('n', '<F5>', '<cmd>w | terminal python %<cr>a', { noremap = true, silent = true, buffer = 0 })"
})

au({ 'FileType' }, {
    pattern = { 'gitcommit' },
    command = "lua vim.wo.spell = true"
})
