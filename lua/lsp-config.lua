vim.cmd [[set shortmess+=c]]
vim.o.completeopt = "menuone,noselect"

-- TODO: On Fresh installs
-- Run :LspInstallInfo
-- Install the required lsps below - e.g., prettier, eslint, tsserver, etc...
vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]
 
require("nvim-lsp-installer").setup {}
 
-- Auto Format
local null_ls = require("null-ls")

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("nnoremap <silent><buffer> <Leader>p :lua vim.lsp.buf.formatting()<CR>")

      -- format on save
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
    end

    if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd("xnoremap <silent><buffer> <Leader>p :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
})

local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

-- Servers
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.stylelint_lsp.setup{}

require'lspsaga'.init_lsp_saga {}
