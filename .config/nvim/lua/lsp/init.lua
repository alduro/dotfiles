local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')
local saga = require('lspsaga').init_lsp_saga()

-- handlers
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    underline = false,
    signs = true,
  }
)

vim.lsp.diagnostic.show_line_diagnostics =
  require('lspsaga.diagnostic').show_line_diagnostics
vim.lsp.handlers["textDocument/hover"] =
  require('lspsaga.hover').handler

require'lsp.sumneko_lua'
require'lsp.tsserver'
require'lsp.efm'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = { "cssls", "html", "jsonls", "solargraph", "clojure_lsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach
  }
end

-- lightbulb config
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()]]