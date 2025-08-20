return {
  "neovim/nvim-lspconfig", -- ya no se usará directamente, pero se puede dejar como dependencia general
  config = function()
    local lsp_keymaps_group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true })

    vim.api.nvim_create_autocmd("LspAttach", {
      group = lsp_keymaps_group,
      callback = function(ev)
        local bufnr = ev.buf
        local opts = { noremap = true, silent = true, buffer = bufnr }

        local map = vim.keymap.set
        map('n', 'gd', vim.lsp.buf.definition, opts)
        map('n', 'K', vim.lsp.buf.hover, opts)
        map('n', 'gi', vim.lsp.buf.implementation, opts)
        map('n', '<space>rn', vim.lsp.buf.rename, opts)
        map('n', '<space>ca', vim.lsp.buf.code_action, opts)
        map('n', 'gr', vim.lsp.buf.references, opts)
        map('n', '[d', vim.diagnostic.goto_prev, opts)
        map('n', ']d', vim.diagnostic.goto_next, opts)
      end,
    })
  end,
}