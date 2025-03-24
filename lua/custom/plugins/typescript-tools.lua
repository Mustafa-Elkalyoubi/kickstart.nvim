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
      },
    }
  end,
  keys = {
    { '<C-S-o>', '<cmd>TSToolsOrganizeImports<cr>', desc = 'Sorts and removes unused imports' },
  },
}
