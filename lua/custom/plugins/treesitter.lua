return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'main', -- rewrite API; master is the legacy branch
    lazy = false, -- does not support lazy-loading
    build = ':TSUpdate',
    config = function()
      -- Parsers used by Svelte (script/style injections need js/ts/css/html)
      local ensure_installed = {
        'bash',
        'c',
        'css',
        'diff',
        'html',
        'javascript',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'svelte',
        'typescript',
        'vim',
        'vimdoc',
      }

      require('nvim-treesitter').install(ensure_installed)

      -- New nvim-treesitter: highlighting is not enabled automatically
      vim.api.nvim_create_autocmd('FileType', {
        desc = 'Enable treesitter highlight',
        group = vim.api.nvim_create_augroup('custom-treesitter-highlight', { clear = true }),
        callback = function(event)
          local ok = pcall(vim.treesitter.start, event.buf)
          if not ok then
            return
          end
          -- Experimental treesitter indent
          vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
