local lspconfig = require('lspconfig')
local coq = require 'coq'

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      signs = {
        priority = 5
      },
      underline = false,
      virtual_text = {
        prefix = "?"
      }
    }
  )

-- vim.lsp.set_log_level("debug")

local servers = { 'rust_analyzer', "solargraph", "cssls", "html", "jsonls", "clojure_lsp", "gopls", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(coq.lsp_ensure_capabilities({
    flags = {
      debounce_text_changes = 150,
    },
    on_attach = function()
      require('lsp.on_attach')
    end,
  }))
end

local path_to_elixirls = vim.fn.expand("~/.elixir-ls/release/language_server.sh")

lspconfig.elixirls.setup(coq.lsp_ensure_capabilities({
  cmd = { path_to_elixirls },
  on_attach = function()
    require('lsp.on_attach')
  end,
  settings = {
    elixirLS = {
      -- I choose to disable dialyzer for personal reasons, but
      -- I would suggest you also disable it unless you are well
      -- aquainted with dialzyer and know how to use it.
      dialyzerEnabled = false,
      -- I also choose to turn off the auto dep fetching feature.
      -- It often get's into a weird state that requires deleting
      -- the .elixir_ls directory and restarting your editor.
      fetchDeps = false
    }
  }
}))

require('lsp.efm')
require('lsp.sumneko_lua')
require('lsp.tsserver')
