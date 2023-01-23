-- ~/.config/nvim/lua/setup/colorscheme.lua

--local colorscheme = 'gruvbox8_hard'
--local colorscheme = 'base16-gruvbox-dark-hard'
local colorscheme = 'onedark'

local status_ok,_ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
    vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
    return
end

-------------------- HIGHLIGHTS --------------------
vim.cmd[[ highlight @comment guifg=#999999 ]]
vim.cmd[[ highlight LineNr guifg=#bbbbbb ]]
vim.cmd[[ highlight NonText guifg=yellow ]]
vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.cmd[[ highlight CursorLine guibg=#505050 ]]
vim.cmd[[ highlight Normal guibg=None ]]
vim.cmd[[ highlight Search gui=None guibg=#4c7899 ]]

