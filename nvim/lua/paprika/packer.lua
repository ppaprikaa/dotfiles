vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- Fuzzy finder!
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorschemes:
	use "rebelot/kanagawa.nvim"
   use ({ 'projekt0n/github-nvim-theme' })
   use 'Mofiqul/vscode.nvim'

	-- Treesitter
	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	-- Undotree
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'

	-- LSP
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

   -- snippet engine | luasnip
   use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})

   -- Autocomplete | nvim-cmp
   use 'hrsh7th/nvim-cmp'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'saadparwaiz1/cmp_luasnip'

   -- Go Dev Tool
   use ('fatih/vim-go', { run = ':GoUpdateBinaries' })

   -- Error logs
   use {
      'folke/trouble.nvim',
      requires = 'nvim-tree/nvim-web-devicons'
   }

   -- In Vim terminal | toggleterm
   use { 'akinsho/toggleterm.nvim', tag = '*' }

   -- Debugging | DAP & DAP-UI
   use "mfussenegger/nvim-dap"
   use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
   use 'theHamsta/nvim-dap-virtual-text'
   use 'leoluz/nvim-dap-go'
   use  'jay-babu/mason-nvim-dap.nvim'

   -- CMake tools
   use {
      'Civitasv/cmake-tools.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
   }

   -- Autopairs
   use "windwp/nvim-autopairs"

   -- File tree | NeoTree
   use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
         "nvim-lua/plenary.nvim",
         "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
         "MunifTanjim/nui.nvim",
      }
   }

   -- source code analysis and navigation | navigator.lua
   use({
      'ray-x/navigator.lua',
      requires = {
         { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
         { 'neovim/nvim-lspconfig' },
      },
   })

end)
