local ensure_packer = function()
	local fn = vim.fn
	local install_path =
		fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		vim.cmd[[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd[[packadd packer.nvim]]

return require("packer").startup(function(use)
  use 'eddyekofo94/gruvbox-flat.nvim'

	use{"nvim-lualine/lualine.nvim"}

  use "nvim-lua/plenary.nvim"

	use{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
	}

	use{ "nvim-telescope/telescope-file-browser.nvim" }

	use"onsails/lspkind-nvim"
  use 'wbthomason/packer.nvim'


	use"jose-elias-alvarez/null-ls.nvim"
  use "jay-babu/mason-null-ls.nvim"
  use 'MunifTanjim/prettier.nvim'

  use {
     "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

	use"hrsh7th/cmp-buffer"
	use"hrsh7th/cmp-nvim-lsp"
	use"hrsh7th/nvim-cmp"

	use"tpope/vim-commentary"

  use 'kyazdani42/nvim-web-devicons'
	use {"nvim-tree/nvim-tree.lua", tag = "nightly"}

end)
