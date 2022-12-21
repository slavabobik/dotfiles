-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'arcticicestudio/nord-vim',
	  as = 'nord',
	  config = function()
		  vim.cmd('colorscheme nord')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

end)
