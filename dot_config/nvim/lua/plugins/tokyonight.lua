return {
  'folke/tokyonight.nvim',
  lazy = false, -- Carga el tema de colores al inicio
  priority = 1000, -- Asegúrate de que se cargue antes que otros plugins
  config = function()
    -- Carga el esquema de colores
    vim.cmd.colorscheme 'tokyonight'
  end,
}