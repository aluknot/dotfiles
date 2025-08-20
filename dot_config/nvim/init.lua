-- [[ Gestor de Plugins: lazy.nvim ]]
-- Instala lazy.nvim si no está presente
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Rama estable recomendada
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- [[ Cargar Módulos ]]
-- Carga las configuraciones del núcleo (opciones, atajos)
require('core')

-- [[ Cargar Lazy ]]
-- Configura lazy.nvim para que cargue los plugins
require('lazy').setup('plugins', {
  -- Desactiva la gestión de Luarocks, que está causando el error.
  rocks = {
    enabled = false,
  },
})