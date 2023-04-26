local lsp = require('lsp-zero').preset({})
local cmp_action = require('lsp-zero').cmp_action()

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)



-- (optional) configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})


require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'ultisnips'},
    {name = 'vim-snippets'},
  },
  mapping = {
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})



lsp.setup()
