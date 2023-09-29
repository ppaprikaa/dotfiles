require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"gopls", "lua_ls", "clangd", "cmake"}
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").cmake.setup {}
