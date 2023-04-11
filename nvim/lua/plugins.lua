local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			'git',
			'clone',
			'--depth',
			'1',
			'https://github.com/wbthomason/packer.nvim',
			install_path,
		})
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')

	use({ 'nvim-lualine/lualine.nvim' })

	-- Theme --
	use({ 'catppuccin/nvim', as = 'catppuccin' })

	-- File Browser --
	use({
		'nvim-telescope/telescope-file-browser.nvim',
		requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
	})

	-- LSP --
	use('jose-elias-alvarez/null-ls.nvim')
	use('jay-babu/mason-null-ls.nvim')

	use('MunifTanjim/prettier.nvim')

	-- Auto Complete --
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-buffer')
	use('onsails/lspkind-nvim') -- vscode-like pictograms

	use({
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig', -- Configurations for NVim LSP
	})

	use('tpope/vim-commentary')

	use('kyazdani42/nvim-web-devicons')
	use({ 'nvim-tree/nvim-tree.lua', tag = 'nightly' })
	use('f-person/git-blame.nvim')
end)
