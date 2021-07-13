local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')
local capabilities = require('lsp.capabilities')

local finders = require("telescope.finders")
local make_entry = require("telescope.make_entry")
local pickers = require("telescope.pickers")
local conf = require("telescope.config").values

-- vim.lsp.set_log_level("debug")
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     signs = true,
--     underline = false,
--     -- virtual_text = false,
--     update_in_insert = true,
--     virtual_text = {
--       spacing = 2,
--       severity_limit = 'Warning',
--     },
--   }
-- )

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
--   vim.lsp.handlers.hover, { focusable = false }
-- )

local lsp_definitions = function(opts)
  opts = opts or {}
  opts.tail_path = true

  local params = vim.lsp.util.make_position_params()
  local action =  "textDocument/definition"
  local result, err = vim.lsp.buf_request_sync(0, action, params, opts.timeout or 10000)
  if err then
    vim.api.nvim_err_writeln("Error when executing " .. action .. " : " .. err)
    return
  end
  local flattened_results = {}
  for _, server_results in pairs(result) do
    if server_results.result then
      vim.list_extend(flattened_results, server_results.result)
    end
  end

  if #flattened_results == 0 then
    return
  else
    local success, locations = pcall(vim.lsp.util.locations_to_items, flattened_results)
    if not success then
      print("Error opening locations " .. locations)
      return
    end
    pickers.new(
      opts,
      {
        prompt_title = "LSP Definitions",
        finder = finders.new_table {
          results = locations,
          entry_maker = opts.entry_maker or make_entry.gen_from_quickfix(opts)
        },
        previewer = conf.qflist_previewer(opts),
        sorter = conf.generic_sorter(opts)
      }
    ):find()
  end
end

local function wrap_options(custom, handler)
  return function(opts)
    opts = opts and vim.tbl_extend(opts, custom) or custom
    handler(opts)
  end
end

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

vim.lsp.handlers["textDocument/codeAction"] =
  wrap_options({layout_strategy = "vertical", width = 50}, require("telescope.builtin").lsp_code_actions)
vim.lsp.handlers["textDocument/references"] =
  wrap_options({layout_strategy = "vertical"}, require("telescope.builtin").lsp_references)
vim.lsp.handlers["textDocument/definition"] =
  wrap_options({layout_strategy = "vertical"}, lsp_definitions)
vim.lsp.handlers["textDocument/documentSymbol"] = (require("telescope.builtin").lsp_document_symbols)
vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = vim.g.border_chars
  }
)

local servers = { "cssls", "html", "jsonls", "clojure_lsp", "gopls", "graphql", "solargraph" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach
  }
end

local path_to_elixirls = vim.fn.expand("~/.elixir-ls/release/language_server.sh")

lspconfig.elixirls.setup({
  cmd = { path_to_elixirls },
  capabilities = capabilities,
  on_attach = on_attach,
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
})

require('lsp.efm')
require('lsp.sumneko_lua')
require('lsp.tsserver')
