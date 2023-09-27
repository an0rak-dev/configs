-- Lazy package manager
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


-- Plugins installation
require("lazy").setup({
        { "nvim-tree/nvim-tree.lua", version="*", lazy=false, dependencies={"nvim-tree/nvim-web-devicons"} },
                  { "cocopon/iceberg.vim", version="*", lazy=false}
})

-- Plugins configuration
require("nvim-tree").setup({
        sort = {
                folders_first = true
        },
        git = {
                enable = false -- not supported on Windows, disabling it globally
        },
        renderer = {
                add_trailing = true,
                special_files = { "Makefile", "ReadMe.md", "README.md", "main.c" },
                highlight_git = false,
                highlight_modified = "icon",
                highlight_opened_files = "name",
                indent_markers = {
                        enable = true
                },
                icons = {
                        glyphs = {
                                default = " ",
                                folder = {
                                        default = "||",
                                        open = "|/",
                                        empty = "||",
                                        empty_open = "|/",
                                }
                        }
                }
        },
        update_focused_file = {
                enable = true
        },
        tab = {
                sync = {
                        open = true
                }
        }
})

-- Keymap bindings
local keymap = vim.api.nvim_set_keymap
local default_options = { noremap = true, silent = true }
keymap("n", "<C-e>", ":NvimTreeOpen<CR>", default_options)

-- Vim classic configuration
vim.cmd("syntax on")
vim.cmd("set nu")
vim.cmd("set shiftwidth=3")
vim.cmd("set tabstop=3")

vim.cmd("set encoding=utf8")
vim.cmd("set ffs=unix,dos,mac")

vim.cmd("set hlsearch")
vim.cmd("set incsearch")

vim.cmd("set nobackup")
vim.cmd("set nowb")
vim.cmd("set noswapfile")
vim.cmd("set noerrorbells")
vim.cmd("set novisualbell")
vim.cmd("colorscheme iceberg")
