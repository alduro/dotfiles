local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')
local capabilities = require('lsp.capabilities')

-- vim.lsp.set_log_level("debug")
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = true,
    underline = false,    
    -- virtual_text = false,
    update_in_insert = true,
    virtual_text = {
      spacing = 2,
      severity_limit = 'Warning',
    },
  }
)

local servers = { "cssls", "html", "jsonls", "clojure_lsp", "gopls", "graphql", "solargraph" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach
  }
end

require('lsp.efm')
require('lsp.sumneko_lua')
require('lsp.tsserver')
