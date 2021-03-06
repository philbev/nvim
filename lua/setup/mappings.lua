--                              _                   _             
--  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ ___  | |_   _  __ _ 
-- | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __| | | | | |/ _` |
-- | | | | | | (_| | |_) | |_) | | | | | (_| \__ \_| | |_| | (_| |
-- |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___(_)_|\__,_|\__,_|
--                 |_|   |_|            |___/                     

-- ~/.config/nvim/lua/setup/mappings.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<F2>', '<cmd>nohlsearch<cr>', opts)
map('n', '<F3>', '<cmd>set spell! spell?<cr>', opts)
map('n', '<F4>', '<cmd>set relativenumber! relativenumber?<cr>', opts)
map('n', '<M-,>', '<cmd>bprevious<cr>', opts)
map('n', '<M-.>', '<cmd>bnext<cr>', opts)
map('n', '<M-Del>', '<cmd>bdelete<cr>', opts)
map('n', '<M-Down>', '<cmd>m +1<cr>==', opts)
map('n', '<M-Up>', '<cmd>m -2<cr>==', opts)
map('n', '<M-c>', '<cmd>close<cr>', opts)
map('n', '<M-n>', '<C-w>w', opts)
map('n', '<M-o>', '<cmd>only<cr>', opts)
map('n', '<leader>n', '<cmd>NeoTreeShowToggle<cr>', opts)
map('n', '<leader>p', '<cmd>PackerSync<cr>', opts)
map('n', '<leader>q', '<cmd>qa<cr>', opts)
map('n', '<leader>s', '<cmd>w | so %<cr>', opts)
map('n', '<leader>vh', '<cmd>split<cr>', opts)
map('n', '<leader>vv', '<cmd>vsplit<cr>', opts)
map('n', '<leader>w', '<cmd>wa<cr>', opts)
map('n', '<leader>x', '<cmd>xa<cr>', opts)


-------------------- VISUAL MODE MAPPINGS --------------------
map('v', '<M-Down>', ":m '>+1<cr>gv", opts)
map('v', '<M-Up>', ":m '<-2<cr>gv", opts)





