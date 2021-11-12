local lspconfig = require('lspconfig')
local eslint = require('lsp/efm/eslint')
local prettier = require('lsp/efm/prettier')
local luafmt = require('lsp/efm/luafmt')

local languages = {
  yaml = { prettier },
  json = { prettier },
  markdown = { prettier },
  javascript = { prettier, eslint },
  javascriptreact = { prettier, eslint },
  typescript = { prettier, eslint },
  typescriptreact = { prettier, eslint },
  -- css = { prettier },
  -- graphql = { prettier },
  -- html = { prettier },
  lua = { luafmt },
  go = {
    {formatCommand = "goimports", formatStdin = true},
    {formatCommand = "gofumpt", formatStdin = true}
  },
}

lspconfig.efm.setup({
  root_dir = lspconfig.util.root_pattern("package.json", ".git"),
  init_options = {
    documentFormatting = true,
    codeAction = true
  },
  filetypes = vim.tbl_keys(languages),
  settings = {
    languages = languages,
    log_level = 1,
    log_file = '~/efm.log'
  },
  on_attach = function(client)
    require('lsp.on_attach')
  end,
})


