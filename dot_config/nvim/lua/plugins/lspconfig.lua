return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- [[ 1. Definir los Keymaps en un Autocomando (El método moderno) ]]
    -- Creamos un grupo de autocomandos para poder limpiarlo si recargamos la config.
    local lsp_keymaps_group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true })

    -- Usamos el evento 'LspAttach' que se dispara cuando un servidor se conecta.
    vim.api.nvim_create_autocmd("LspAttach", {
      group = lsp_keymaps_group,
      callback = function(ev)
        -- 'ev.buf' es el buffer al que se ha conectado el LSP.
        local bufnr = ev.buf
        local opts = { noremap = true, silent = true, buffer = bufnr }

        -- Aquí van todos tus atajos, usando 'opts' que apunta al buffer correcto.
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
      end,
    })

    -- [[ 2. Configurar los Servidores ]]
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Ya no necesitamos pasar 'on_attach' aquí.
    mason_lspconfig.setup({
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
            -- No hay on_attach aquí, se gestiona globalmente con LspAttach.
          })
        end,
      }
    })
  end,
}