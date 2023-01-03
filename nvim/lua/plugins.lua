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
-- Theme --  -- vscode-like pictograms -- nvim-cmp source for buffer words -- nvim-cmp source for neovim's built-in LSP -- Completion -- LSP -- optional, for file icons -- optional, updated every week. (see issue #1193)
	use{
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	}
	use{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
	}
	use"nvim-lua/plenary.nvim"
	use{ "nvim-telescope/telescope-file-browser.nvim" }
	use{
		"dracula/vim",
		name = "dracula",
	}
	use"jose-elias-alvarez/null-ls.nvim"
	use"MunifTanjim/prettier.nvim"

	use"onsails/lspkind-nvim"
	use"hrsh7th/cmp-buffer"
	use"hrsh7th/cmp-nvim-lsp"
	use"hrsh7th/nvim-cmp"
	use"neovim/nvim-lspconfig"
	use"williamboman/mason.nvim"
	use"williamboman/mason-lspconfig.nvim"

	use"L3MON4D3/LuaSnip"
	use"tpope/vim-commentary"
	use{
		"sindrets/diffview.nvim",
		requires = "nvim-lua/plenary.nvim",
	}

	use{
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
		tag = "nightly",
	}
	if packer_bootstrap then
		require("packer").sync()
	end
end)