lua require("lspconfig")

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()

