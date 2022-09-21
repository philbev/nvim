--   ___ ___  _ __ ___  _ __ | | ___| |_(_) ___  _ __   | |_   _  __ _ 
--  / __/ _ \| '_ ` _ \| '_ \| |/ _ \ __| |/ _ \| '_ \  | | | | |/ _` |
-- | (_| (_) | | | | | | |_) | |  __/ |_| | (_) | | | |_| | |_| | (_| |
--  \___\___/|_| |_| |_| .__/|_|\___|\__|_|\___/|_| |_(_)_|\__,_|\__,_|
--                     |_|                                             

-- ~/.config/nvim/lua/setup/completion.lua

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local status_ok,luasnip = pcall(require, 'luasnip')
if not status_ok then
    return
end

local status_ok,lspkind = pcall(require, 'lspkind')
if not status_ok then
    return
end

local lspkind = lspkind

local status_ok,cmp = pcall(require, 'cmp')
if not status_ok then
    return
end

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		{ name = 'luasnip' },
		{ name = 'path' },
	}, {
		{ name = 'buffer' },
		{ name = 'dictionary', keyword_length = 4 },
	}),
	formatting = {
		format = lspkind.cmp_format {
			mode = 'symbol_text',
			maxwidth = 50,
			with_text = true,
			menu = {
				buffer = "[Buf]",
				nvim_lsp = "[Lsp]",
				nvim_lua = "[Api]",
				path = "[Path]",
				luasnip = "[Luasnip]",
				dictionary = '[Dict]'
			},
		},
	}
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' },
	}, {
		{ name = 'buffer' },
		{ name = 'dictionary', keyword_length = 5 },
		{ name = 'path' },
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
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

require("cmp_dictionary").setup({
		dic = {
			["*"] = { "/usr/share/dict/words" },
			["lua"] = "path/to/lua.dic",
			["javascript,typescript"] = { "path/to/js.dic", "path/to/js2.dic" },
			filename = {
				["xmake.lua"] = { "path/to/xmake.dic", "path/to/lua.dic" },
			},
			filepath = {
				["%.tmux.*%.conf"] = "path/to/tmux.dic"
			},
			spelllang = {
				en = "path/to/english.dic",
			},
		},
		-- The following are default values.
		exact = 2,
		first_case_insensitive = false,
		document = false,
		document_command = "wn %s -over",
		async = false,
		capacity = 5,
		debug = false,
	})
