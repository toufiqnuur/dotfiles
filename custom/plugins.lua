local overrides = require("custom.configs.overrides")

---@type NvPluginSpec
local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree
  },

  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end
  }
}

return plugins
