vim.g.mapleader = " "



local options = { noremap = true, silent = true }

local nkeymap = function(key, func)
  -- keymap(mode, keymap, mapped to, options)
  vim.api.nvim_set_keymap('n', key, func, options)
end

-- too lazy for c-w
nkeymap('<c-j>', ':wincmd j<CR>')
nkeymap('<c-h>', ':wincmd h<CR>')
nkeymap('<c-k>', ':wincmd k<CR>')
nkeymap('<c-l>', ':wincmd l<CR>')

nkeymap('<leader>j', ':wincmd j<CR>')
nkeymap('<leader>h', ':wincmd h<CR>')
nkeymap('<leader>k', ':wincmd k<CR>')
nkeymap('<leader>l', ':wincmd l<CR>')

-- autosurround stuff
--keymap('i', '{', '{}<left>', {})
-- this v causes some delay in this ^..
-- keymap('i', '{<CR>', '{<CR>}<ESC>O', {})
-- keymap('i', '{;<CR>', '{<CR>};<ESC>O', {})

-- LSP

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
-- nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
-- nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
-- nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
-- nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
-- nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
nkeymap('<leader>fo', '<cmd>lua vim.lsp.buf.formatting()<CR>')
nkeymap('<leader>b', ':bn<CR>')
nkeymap('<leader>d' , '<cmd>:bd<CR>')

-- nvim-tree
--
nkeymap('<leader>t', '<cmd>NvimTreeToggle<CR>')

-- telescope
--
nkeymap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nkeymap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nkeymap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nkeymap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")


-- Undotree, thats the only one i need
-- for now at least
nkeymap("<leader>u", "<cmd>UndotreeToggle<cr>")
