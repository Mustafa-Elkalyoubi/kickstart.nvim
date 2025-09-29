return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  name = 'typescript-tools',
  event = 'VeryLazy',
  config = function()
    require('typescript-tools').setup {
      settings = {
        tsserver_file_preferences = {
          includeInlayParameterNameHints = 'all',
          includeInlayVariableTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
        },
        jsx_close_tag = {
          enable = true,
          filetypes = { 'javascriptreact', 'typescriptreact' },
        },
      },
    }
  end,
  keys = {
    { '<C-S-o>', '<cmd>TSToolsOrganizeImports<cr>', desc = 'Sorts and removes unused imports' },
  },

  -- enabled = false,
}
