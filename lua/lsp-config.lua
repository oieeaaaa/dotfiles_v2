vim.cmd [[set shortmess+=c]]
vim.o.completeopt = "menuone,noselect"

-- TODO: Fix this later when there is no permission issue to install:
-- npm i -g vscode-langservers-extracted
vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]

require("nvim-lsp-installer").setup {}

-- Servers
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.stylelint_lsp.setup{}

require'lspsaga'.init_lsp_saga {}
