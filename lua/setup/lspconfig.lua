-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['sumneko_lua'].setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim', 'use' }
			}
		}
	}
}

require('lspconfig')['jedi_language_server'].setup{
    capabilities = capabilities
}
