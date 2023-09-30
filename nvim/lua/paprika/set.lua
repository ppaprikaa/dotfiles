require("paprika.theme")
local vim = vim

vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.wrapmargin = 0
vim.opt.laststatus = 0
vim.cmd("set nowrap")

vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.g.mapleader = " "

-- Winter is coming, so dawn comes late and sunset quite early
SetThemeBasedOnDayTime { sunriseHour = 8, sunsetHour = 15, utcDelta = 6 }
