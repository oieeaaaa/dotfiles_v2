vim.cmd [[set shortmess+=c]]
vim.o.completeopt = "menuone,noselect"

-- TODO: Fix this later when there is no permission issue to install:
-- npm i -g vscode-langservers-extracted
-- vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]

require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}

require'lspsaga'.init_lsp_saga {
  error_sign = '!',
  warn_sign = '^',
  hint_sign = '?',
  infor_sign = '~',
  border_style = "round",
  code_action_prompt = {
    enable = false
  }
}
