-- ~/.config/nvim/lua/setup/colorscheme.lua

local colorscheme = 'gruvbox8_hard'

local status_ok,_ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

-------------------- HIGHLIGHTS --------------------
vim.cmd[[ highlight Comment guifg=#00bbbb ]]
vim.cmd[[ highlight LineNr guifg=#bbbbbb ]]
vim.cmd[[ highlight NonText guifg=yellow ]]
vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.cmd[[ highlight PMenu guibg=#202020 ]]
vim.cmd[[ highlight Normal guibg=None ]]
vim.cmd[[ highlight CursorLine guibg=#505050 ]]
