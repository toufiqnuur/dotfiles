local configs = require("plugins.configs.lspconfig")

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = configs.on_attach,
    capabilities = configs.capabilities,
  }
end

lspconfig.emmet_ls.setup({
  capabilities = configs.capabilities,
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  }
})
