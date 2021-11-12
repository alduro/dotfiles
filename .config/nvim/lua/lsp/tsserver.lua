local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')

lspconfig.tsserver.setup {
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach(client)
  end
}
