return {

  -- { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is.
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --   'folke/tokyonight.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('tokyonight').setup {
  --       transparent = true,
  --       styles = {
  --         comments = { italic = true },
  --       },
  --     }
  --
  --     -- Load the colorscheme here.
  --     -- Like many other themes, this one has different styles, and you could load
  --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --     vim.cmd.colorscheme 'tokyonight-storm'
  --   end,
  -- },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      -- Default options:
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = 'dragon',
        background = {
          dark = 'dragon',
          light = 'lotus',
        },
      }

      vim.cmd 'colorscheme kanagawa'
    end,
  },

  -- {
  --   'EdenEast/nightfox.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('nightfox').setup {
  --       options = {
  --         transparent = true,
  --
  --         styles = {
  --           comments = 'italic',
  --         },
  --       },
  --     }
  --
  --     vim.cmd 'colorscheme Carbonfox'
  --   end,
  -- },
  -- {
  --   'darianmorat/gruvdark.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('gruvdark').setup {
  --       transparent = true,
  --     }
  --
  --     vim.cmd 'colorscheme gruvdark'
  --   end,
  -- },
}
