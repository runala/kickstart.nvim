return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = 'Add file' })
    vim.keymap.set('n', '<leader>he', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'view files' })

    vim.keymap.set('n', '<leader>hh', function()
      harpoon:list():select(1)
    end, { desc = 'Jump to file 1' })
    vim.keymap.set('n', '<leader>hj', function()
      harpoon:list():select(2)
    end, { desc = 'Jump to file 2' })
    vim.keymap.set('n', '<leader>hk', function()
      harpoon:list():select(3)
    end, { desc = 'Jump to file 3' })
    vim.keymap.set('n', '<leader>hl', function()
      harpoon:list():select(4)
    end, { desc = 'Jump to file 4' })
    vim.keymap.set('n', '<leader>hH', function()
      harpoon:list():replace_at(1)
    end, { desc = 'Replace file at 1' })
    vim.keymap.set('n', '<leader>hJ', function()
      harpoon:list():replace_at(2)
    end, { desc = 'Replace file at 2' })
    vim.keymap.set('n', '<leader>hK', function()
      harpoon:list():replace_at(3)
    end, { desc = 'Replace file at 3' })
    vim.keymap.set('n', '<leader>hK', function()
      harpoon:list():replace_at(4)
    end, { desc = 'Replace file at 4' })
  end,
}
