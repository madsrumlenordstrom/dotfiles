-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

local function get_config(name)
  return string.format('require("setup/%s")', name)
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Onedark theme for neovim
  use ({
    'navarasu/onedark.nvim',
    config = get_config('onedark')
  })

  -- Treesitter for syntax highlighting
  use ({
    'nvim-treesitter/nvim-treesitter',
    config = get_config('nvim-treesitter'),
    run = ':TSUpdate'
  })

end)
