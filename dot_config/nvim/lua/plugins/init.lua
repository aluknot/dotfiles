return {
  'folke/lazy.nvim',
  -- El primer argumento de `lazy.setup` puede ser una tabla de specs de plugins
  -- o, como en este caso, un string que apunta a un directorio.
  -- Lazy cargará automáticamente cualquier archivo .lua de este directorio.
  --
  -- Le decimos que cargue los archivos de la misma carpeta ('plugins')
  opts = {
    spec = {
      { import = 'plugins' },
    },
  },
}