return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup({
      -- Mapea los formateadores a los tipos de archivo
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'black' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
      },
      -- Configuración para formatear al guardar
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end,
}