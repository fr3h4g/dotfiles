-- Leader key -> ","
--
-- In general, it's a good idea to set this early in your config, because otherwise
-- if you have any mappings you set BEFORE doing this, they will be set to the OLD
-- leader.

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("fr3h4g.options")

-- vim.paste = (function(lines, phase)
--   print("paste", phase, vim.inspect(lines))
--   vim.api.nvim_put(lines, 'c', true, true)
-- end)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	-- Git related plugins
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",

	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",

	{ import = "fr3h4g.plugins" },
})

require("fr3h4g.config")
