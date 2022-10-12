vim.cmd [[set shortmess+=c]]
vim.o.completeopt = "menuone,noselect"

-- TODO: On Fresh installs
-- Run :LspInstallInfo
-- Install the required lsps below - e.g., prettier, eslint, tsserver, etc...
vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]
 
require("nvim-lsp-installer").setup {}
 
-- Auto Format
local null_ls = require("null-ls")

null_ls.setup {}

local prettier = require("prettier")

prettier.setup {}

-- Servers
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.stylelint_lsp.setup{}

require'lspsaga'.init_lsp_saga {}
