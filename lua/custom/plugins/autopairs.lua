-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    -- Auto-close and auto-rename HTML tags
    -- Documentation: https://github.com/windwp/nvim-ts-autotag/blob/main/README.md
    'windwp/nvim-ts-autotag',
    ft = { 'html', 'javascript', 'typescript', 'svelte', 'vue', 'tsx', 'jsx' },
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
}
