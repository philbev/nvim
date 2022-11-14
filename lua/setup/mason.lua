local status_ok, mason = pcall(require, 'mason')
if not status_ok then
    return
end

local status_lsp,lspconfig = pcall(require, 'mason-lspconfig')
if not status_lsp then
    return
end

mason.setup()
lspconfig.setup({
    ensure_installed = { 'jedi_language_server', 'pylsp' }
})
