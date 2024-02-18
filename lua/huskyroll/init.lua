require("huskyroll.set")
require("huskyroll.remap")

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
local opts = {}

require("lazy").setup({
    spec = 'huskyroll.plugins'
})




vim.keymap.set('n', '<leader>neo', ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>neoc', ':Neotree filesystem close<CR>')
