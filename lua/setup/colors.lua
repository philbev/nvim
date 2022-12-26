-- ~/.config/nvim/lua/setup/colorscheme.lua

--local colorscheme = 'gruvbox8_hard'
local colorscheme = 'base16-gruvbox-dark-hard'
vim.cmd[[ highlight Normal guibg=#404040 ]]

local status_ok,_ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
    vim.notify('Colorscheme ' .. colorscheme .. ' not found!', 'error')
    vim.cmd[[ highlight Normal guibg=None ]]
    vim.cmd[[ highlight PMenu guibg=#404040 ]]
    return
end

require('base16-colorscheme').setup({
    --base00 = '#16161D', base01 = '#2c313c', base02 = '#3e4451', base03 = '#6c7891',
    base00 = '#16161D', base01 = '#2c313c', base02 = '#3e4451', base03 = '#00bbbb',
    base04 = '#565c64', base05 = '#abb2bf', base06 = '#9a9bb3', base07 = '#c5c8e6',
    base08 = '#e06c75', base09 = '#d19a66', base0A = '#e5c07b', base0B = '#98c379',
    base0C = '#56b6c2', base0D = '#0184bc', base0E = '#c678dd', base0F = '#a06949',
})

-------------------- HIGHLIGHTS --------------------
vim.cmd[[ highlight Comment guifg=#00bbbb ]]
vim.cmd[[ highlight LineNr guifg=#bbbbbb ]]
vim.cmd[[ highlight NonText guifg=yellow ]]
vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.cmd[[ highlight PMenu guibg=#404040 ]]
vim.cmd[[ highlight CursorLine guibg=#505050 ]]
vim.cmd[[ highlight Normal guibg=None ]]
vim.cmd[[ highlight Search gui=None guibg=#000000 ]]

