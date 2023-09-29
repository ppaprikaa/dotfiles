local cmp = require('cmp')

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
      ['<C-f>'] = cmp.mapping(function()
         if cmp.visible() then
            cmp.select_next_item()
         end
      end),
      ['<C-b>'] = cmp.mapping(function()
         if cmp.visible() then
            cmp.select_prev_item()
         end
      end),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
   }),

   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
   }, {
      { name = 'cmdline' },
   }, {
      { name = 'luasnip' },
   }, {
      { name = 'buffer' },
   }),

   cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
         { name = 'buffer' }
      }
   }),

   cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
         { name = 'path' }
      }, {
         { name = 'cmdline' }
      })
   })
})
