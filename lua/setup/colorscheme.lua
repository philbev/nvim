-- ~/.config/nvim/lua/setup/colorscheme.lua

local colorscheme = 'gruvbox8_hard'

local status_ok,_ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

vim.cmd[[ highlight Normal guibg=None ]]
