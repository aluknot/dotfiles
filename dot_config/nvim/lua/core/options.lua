-- [[ Opciones Generales ]]
vim.opt.mouse = 'a'                 -- Habilitar el uso del mouse en todos los modos
vim.opt.clipboard = 'unnamedplus'   -- Usar el portapapeles del sistema para copiar y pegar
vim.opt.swapfile = false            -- Desactivar archivos de intercambio (swap)

-- [[ Interfaz de Usuario ]]
vim.opt.number = true               -- Mostrar números de línea
vim.opt.relativenumber = true       -- Mostrar números de línea relativos
vim.opt.termguicolors = true        -- Habilitar colores verdaderos en la terminal
vim.opt.signcolumn = 'yes'          -- Dejar siempre visible la columna de signos (para git y LSP)

-- [[ Sangría y Tabulaciones ]]
vim.opt.tabstop = 2                 -- Número de espacios que representa una tabulación
vim.opt.softtabstop = 2             -- Número de espacios al presionar Tab en modo inserción
vim.opt.shiftwidth = 2              -- Número de espacios para la sangría automática
vim.opt.expandtab = true            -- Usar espacios en lugar de tabulaciones

-- [[ Búsqueda ]]
vim.opt.hlsearch = true             -- Resaltar los resultados de la búsqueda
vim.opt.incsearch = true            -- Mostrar resultados de búsqueda mientras escribes
vim.opt.ignorecase = true           -- Ignorar mayúsculas/minúsculas al buscar
vim.opt.smartcase = true            -- No ignorar mayúsculas si la búsqueda contiene mayúsculas