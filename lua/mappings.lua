vim.cmd('noremap <leader>/ :noh<cr>:call clearmatches()<cr>') -- clear matches

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(
    mode, 
    shortcut, 
    command, 
    { noremap = true, silent = true }
  )
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Easy buffer navigation
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')

-- Easy window split; C-w v -> vv, C-w - s -> ss
nmap('vv', '<C-w>v')
nmap('ss', '<C-w>s')

-- PLUGINS

-- TELESCOPE
nmap("<leader>ff", "<cmd>Telescope git_files<cr>") -- with respect to .gitignore
nmap("<leader>fa", "<cmd>Telescope find_files<cr>") -- find all
nmap("<leader>fb", "<cmd>Telescope buffers<cr>") -- find buffers
nmap("<leader>fs", "<cmd>Telescope live_grep<cr>") -- find buffers
nmap("<leader>dd", "<cmd>Telescope lsp_definitions<cr>")

-- LSP
nmap('<leader>rr', '<cmd>Lspsaga rename<cr>')

-- NVIM TREE
nmap('<leader>e', '<cmd>NvimTreeFindFile<cr>')
nmap('<leader>n', '<cmd>NvimTreeToggle<cr>')
