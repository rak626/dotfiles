vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Window commands" })
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>x", ":x<CR>")

local function ensure_plugin(url, name)
  local install_path = vim.fn.stdpath("data") .. "/site/pack/plugins/start/" .. name
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({ "git", "clone", url, install_path })
    vim.cmd("packadd " .. name)
  end
end

ensure_plugin("https://github.com/olimorris/onedarkpro.nvim.git", "onedarkpro")

require("onedarkpro").setup({
  options = {
    transparency = true,
  },
})

vim.cmd.colorscheme("onedark")
