-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

local function get_config(name)
  return string.format('require("setup/%s")', name)
end

local packer = require('packer')

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  },
})


packer.startup(function(use)

  -- Packer can manage itself
  use ({ 'wbthomason/packer.nvim' })

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

  -- Snippet engine
  use ({
      'L3MON4D3/LuaSnip',
      requires = 'saadparwaiz1/cmp_luasnip',
      --tag = "v<CurrentMajor>.*"
      config = get_config('luasnip')
  })

  -- Autocompletion
  use ({
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp-signature-help'
    },
    config = get_config('nvim-cmp'),
  })

  -- Snippets for most languages
  use ({
      'rafamadriz/friendly-snippets',
      -- config = get_config('friendly-snippets')
  })

  -- LSP installer
  use ({
      'williamboman/mason.nvim',
      requires = {
          'williamboman/mason-lspconfig.nvim'
      };
      config = get_config('mason')
  })

  -- Language server protocol
  use ({
      'neovim/nvim-lspconfig',
      requires = {
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',
      };
      config = get_config('nvim-lspconfig')
  })


  -- Automatic pairs of parantheses etc
  use ({
    'windwp/nvim-autopairs',
    config = get_config('nvim-autopairs')
  })

  -- Helpful keybindings information
  use ({
      'folke/which-key.nvim',
      config = get_config('which-key')
  })

end)
