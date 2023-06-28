-- Format my code with whatever formatter available on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
