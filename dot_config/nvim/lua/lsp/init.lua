-- Carga todos los archivos dentro de la carpeta lsp (salvo el init)

local lsp_path = vim.fn.stdpath("config") .. "/lua/lsp"

for _, file in ipairs(vim.fn.globpath(lsp_path, "*.lua", false, true)) do
  local name = vim.fn.fnamemodify(file, ":t:r") -- solo nombre de archivo sin extensión
  if name ~= "init" then
    local ok, config = pcall(require, "lsp." .. name)
    if ok and type(config) == "table" then
      vim.lsp.config(name, config)
      vim.lsp.enable(name)
    end
  end
end