return {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" },
  root_dir = vim.fs.dirname(vim.fs.find({ "index.html", ".git" }, { upward = true })[1]),
}