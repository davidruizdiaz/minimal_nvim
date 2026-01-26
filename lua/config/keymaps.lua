-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

-- Cambia la función map para manejar tanto strings como funciones
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  
  -- Si rhs es una función, necesitamos crear un wrapper
  if type(rhs) == 'function' then
    -- Para funciones de Telescope, usamos vim.keymap.set
    vim.keymap.set(mode, lhs, rhs, options)
  else
    -- Para strings normales, usamos nvim_set_keymap
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
end

-- Cambia leader a espacio
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Fast saving
map('n', '<C-s>', ':w<CR>')

-----------------------------------------------------------
-- Telescope shortcuts (se configuran DESPUÉS de que Telescope cargue)
-----------------------------------------------------------

  map('n', '<leader>f', ':Telescope find_files<CR>')
  map('n', '<leader>s', ':Telescope live_grep<CR>')
  map('n', '<leader>b', ':Telescope buffer<CR>')
  map('n', '<leader>h', ':Telescope help_tags<CR>')

-----------------------------------------------------------
-- Otras aplicaciones y plugins
-----------------------------------------------------------

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh
-- Alternar entre NvimTree y buffer activo
map('n', '<C-h>', '<Cmd>NvimTreeFocus<CR>', { desc = 'Focus NvimTree' })  -- Ir al explorador
map('n', '<C-l>', '<Cmd>wincmd p<CR>', { desc = 'Go to previous window' })  -- Volver al buffer

-- Buffer navigation
map('n', '<S-h>', ':bprevious<CR>')                 -- previous buffer
map('n', '<S-l>', ':bnext<CR>')                     -- next buffer
map('n', '<leader>bd', ':bwipeout<CR>')             -- delete buffer

-- Lazy
map('n', '<leader>l', ':Lazy<CR>')                  -- Lazy.nvim

-- Exportar la función para llamarla después
return {
  setup_telescope_keymaps = setup_telescope_keymaps
}
