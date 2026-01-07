-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Find files with telescope
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')


-- Fast saving with <leader> and s
map('n', '<C-s>', ':w<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>s', ':NvimTreeFindFile<CR>')      -- search file
map('n', '<S-l>', ':bnext<CR>')                     -- next buffer
map('n', '<S-j>', ':bprevious<CR>')                 -- previous buffer
