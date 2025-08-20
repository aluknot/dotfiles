-- [[ Mapeo de Teclas (Keymaps) ]]
-- La 'n' significa que el atajo funciona en modo Normal.
-- El <silent> evita que el comando se muestre en la línea de comandos.
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {
  noremap = true,
  silent = true,
  desc = "Abrir explorador de archivos"
})