return {
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  root_dir = vim.fs.dirname(vim.fs.find({ "go.mod", ".git" }, { upward = true })[1]),
}