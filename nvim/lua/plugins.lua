local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use({
	"nvim-treesitter/nvim-treesitter",
	commit = "518e27589c0463af15463c9d675c65e464efc2fe",
  })
  use {
	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   }
  use {
    'nvim-telescope/telescope.nvim', tag= '0.1.0',
  }
  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "dracula/vim", name = "dracula" }

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion

  use 'neovim/nvim-lspconfig' -- LSP

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'L3MON4D3/LuaSnip'

end)
