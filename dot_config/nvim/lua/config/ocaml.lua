local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.ocamllsp.setup({
  cmd = { "ocamllsp" },
  filetypes = { "ocaml", "reason", "rescript" },
  root_dir = lspconfig.util.root_pattern("*.opam", "esy.json", "package.json", ".git"),
  capabilities = capabilities,
})
