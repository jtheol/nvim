local mason_plugins = {
  "html-lsp",
  "black",
  "erb-formatter",
  "erb-lint",
  "json-lsp",
  "markdown-toc",
  "markdownlint-cli2",
  "marksman",
  "prettier",
  "python-lsp-server",
  "rubocop",
  "ruby-lsp",
  "tailwindcss-language-server",
  "vtsls",
  "yaml-language-server",
  "sqlfluff",
  "ansible-language-server",
  "bash-language-server",
  "lua-language-server",
  "ruff",
  "shellcheck",
  "vale-ls",
  "stylua",
  "shfmt",
  "gopls",
  "terraform-ls",
}

local mason_registry = require("mason-registry")

local function install_mason_package(name)
  local package = mason_registry.get_package(name)
  if not package:is_installed() then
    package:install()
  end
end

for _, name in ipairs(mason_plugins) do
  install_mason_package(name)
end
