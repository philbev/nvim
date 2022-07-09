--           _   _   _                   _             
--  ___  ___| |_| |_(_)_ __   __ _ ___  | |_   _  __ _ 
-- / __|/ _ \ __| __| | '_ \ / _` / __| | | | | |/ _` |
-- \__ \  __/ |_| |_| | | | | (_| \__ \_| | |_| | (_| |
-- |___/\___|\__|\__|_|_| |_|\__, |___(_)_|\__,_|\__,_|
--                           |___/                     

-- ~/.config/nvim/lua/setup/settings.lua

local set = vim.o

set.number = true
set.relativenumber = true
set.termguicolors = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true
set.smartindent = true
set.clipboard = 'unnamedplus'
set.pastetoggle = '<F6>'
set.timeoutlen = 1500
set.pumheight = 12
set.mouse = 'a'
set.completeopt = 'menu,menuone,noselect'
set.splitright = true
set.splitbelow = true
set.laststatus = 3
set.winbar = '%f%=%b/0x%B'

--vim.cmd[[ colorscheme dracula ]]
vim.cmd[[ highlight Comment guifg=#bbbbbb ]]
vim.cmd[[ highlight LineNr guifg=#bbbbbb ]]
vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.cmd[[ highlight PMenu guibg=#202020 ]]
