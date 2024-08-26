-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal' },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>tn', ':tabnext<CR>', { desc = '[T]ab [N]ext', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>tp', ':tabprev<CR>', { desc = '[T]ab [P]revious', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>tt', ':tabnew<CR>', { desc = '[T]ab new:', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>t1', ':tabn 1<CR>', { desc = '[T]ab 1', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>t2', ':tabn 2<CR>', { desc = '[T]ab 2', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>t3', ':tabn 3<CR>', { desc = '[T]ab 3', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>t4', ':tabn 4<CR>', { desc = '[T]ab 4', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>t5', ':tabn 5<CR>', { desc = '[T]ab 5', noremap = true, silent = true })
  end,
}
