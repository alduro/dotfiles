vim.o.mouse = 'a' -- Enable mouse
vim.o.exrc = true -- Allow using local nvimrc
-- Appearance
vim.o.termguicolors = true -- Support 24 bit color
vim.o.updatetime = 300  --Faster completion
vim.o.lazyredraw = true -- the screen will not be redrawn unless necessary
vim.wo.number = true
vim.wo.relativenumber = false
vim.wo.cursorline = true -- Highlight cursor
vim.o.sidescrolloff = 4
vim.o.scrolloff = 4
vim.wo.signcolumn="yes"  --Always show the signcolumn, otherwise it would shift the text each time
vim.cmd('set noshowmode')
-- Search
vim.o.ignorecase = true
vim.o.smartcase  = true
vim.o.inccommand = 'nosplit' -- Enable live substitution
-- No backups or swapfile
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.hidden = true -- Keep undo history for hiden buffers
-- More Natural splits behaviour
vim.o.splitbelow = true
vim.o.splitright = true
-- Wrap text
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = '↪' -- Show breakline symbol
vim.o.clipboard = 'unnamed,unnamedplus' -- Use system's clipboard
vim.bo.expandtab = true -- converts tabs to spaces
vim.o.shiftwidth = 2 -- number of space characters inserted for indentation
-- Enable folding by default
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 99
vim.cmd('set iskeyword+=-') --treat dash separated words as a word text object"
-- ft=markdown
vim.cmd [[autocmd FileType markdown setl spell]] -- Enable spelling
-- vim.o.conceallevel = 0 -- TODO: add this to markdown aucmd
-- ft=terminal
vim.cmd [[autocmd TermOpen term://* startinsert]] -- Start on insert mode.
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]] -- No line numbersd

-- vim-sandwich
vim.cmd('runtime macros/sandwich/keymap/surround.vim')
-- hosts
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.ruby_host_prog = '/Users/alduro/.asdf/shims/ruby'

vim.bo.formatoptions = 'crqnj'          -- Automatic formatting options
vim.bo.smartindent = true               -- Insert indents automatically
vim.bo.tabstop = 2                      -- Number of spaces tabs count for
vim.bo.textwidth =  99	                -- Maximum width of text

vim.o.completeopt = 'menuone,noinsert,noselect'  -- Completion options
vim.o.shiftround = true                   -- Round indent
vim.o.wildmode = 'list:longest'           -- Command-line completion mode

