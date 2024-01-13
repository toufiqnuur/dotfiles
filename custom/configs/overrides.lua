local M = {}

M.treesitter = {
  ensure_installed = {
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "jsdoc"
  }
}

M.mason = {
  ensure_installed = {
    "html-lsp",
    "prettierd",
    "typescript-language-server",
    "css-lsp",
    "json-lsp",
    "emmet-ls",
    "tailwindcss-language-server"
  }
}

M.nvimtree = {
  git = {
    enable = true
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true
      }
    }
  }
}

return M
