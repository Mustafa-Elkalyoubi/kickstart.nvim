return {
  'nvimtools/none-ls.nvim',
  ft = 'go',
  opts = function()
    local null_ls = require 'null-ls'
    return {
      sources = {
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.golines,
      },
    }
  end,
}
