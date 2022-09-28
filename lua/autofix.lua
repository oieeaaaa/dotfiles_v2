vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]])
vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js Prettier]])
