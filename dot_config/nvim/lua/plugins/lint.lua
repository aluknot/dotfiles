return {
  'mfussenegger/nvim-lint',
  config = function()
    local lint = require('lint')

    -- Mapea los linters a los tipos de archivo
    lint.linters_by_ft = {
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
    }

    -- Activa el linting automático con un autocomando
    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter', 'InsertLeave' }, {
      group = vim.api.nvim_create_augroup('lint', { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}