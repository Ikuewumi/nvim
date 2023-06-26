require("lint").linters_by_ft = {
	markdown = {"markdownlint"},
	javascript = {"eslint"},
	typescript = {"eslint"},
	css = {"stylelint"}
}


-- Auto start lint
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
