--[[
    Vim keymaps that must work with neovim without any plugin

    The plugins keymaps must be in their repective config files

    To discover maps just use RipGrep or :verbose <mode>map <key>
]]

vim.g.mapleader = " "

local map = vim.keymap.set

-- Function Keys
map("n", "<F1>", ":vertical help ")
map("n", "<F2>", ":verbose map ")

-- File Explorer
map("n", "<leader>fe", ":Ex<CR>")
map("n", "<leader>fp", ":find ")

-- Create File
map("n", "<leader>nf", ":!touch ")
map("n", "<leader>nd", ":!mkdir -p ")

-- Reset command-line
map("n", "<C-c>", "<cmd>set cmdheight=1<Enter><cmd>echo ''<Enter>");

-- Closer del
map("i", "<C-l>", "<Del>")

-- Insert lines/spaces in Normal Mode
map("n", "<CR>", "i<CR><Esc>")
map("n", "<A-d>", "o<Esc>k")
map("n", "<A-u>", "O<Esc>j")

-- Move Text
map("v", "<C-j>", ":move '>+1<CR>gv-gv", { silent = true })
map("v", "<C-k>", ":move '<-2<CR>gv-gv", { silent = true })
map("v", ">", ">gv", { silent = true })
map("v", "<", "<gv", { silent = true })

-- Easy Register Copy/Cut to x
map({ "n", "i" }, "x", "<Nop>")
map("v", "xy", "\"xy")
map("v", "xd", "\"xd")
map("n", "xp", "\"xp")

-- Easy Register Copy/Cut to/from System Clipboard (:checkhealth if not working)
map("v", "<leader>sy", "\"+y")
map("v", "<leader>sd", "\"+d")
map("n", "<leader>sp", "\"+p")

-- Quickfix
map("n", "<A-n>", "<cmd>cnext<Enter>")
map("n", "<A-p>", "<cmd>cprev<Enter>")

-- ### Plugin: Closing cheracter ###############################################
map("i", "(<CR>", "(<CR>)<Esc>ko")
map("i", "[<CR>", "[<CR>]<Esc>ko")
map("i", "[[<CR>", "[[<CR>]]<Esc>ko")
map("i", "{<CR>", "{<CR>}<Esc>ko")
map("i", "({<CR>", "({<CR>})<Esc>ko")
map("i", "`<CR>",  "<CR>`<Esc>ko<Tab>")
map("i", "(`<CR>", "(``)<Esc>hi<CR><Esc>ko<Tab>")

-- ### Buffers #################################################################

-- Next
map("n", "<leader>bn", ":bnext<CR>", { silent = true })
map("n", "<leader>bl", ":bnext<CR>", { silent = true })

-- Previous
map("n", "<leader>bp", ":bprevious<CR>", { silent = true })
map("n", "<leader>bh", ":bprevious<CR>", { silent = true })

-- Utils
map("n", "<leader>bb", ":buffers<CR>")
map("n", "<leader>bx", ":buffers<CR>:b")
map("n", "<leader>bd", ":bdelete<CR>")
map("n", "<leader>ba", ":bufdo bd")

-- ### Tabs ####################################################################

-- New Tab
map("n", "<leader>tc", ":tabnew<CR>", { silent = true })

-- Close Tabs
map("n", "<leader>tq", ":tabclose<CR>", { silent = true })
map("n", "<leader>to", ":tabonly<CR>", { silent = true })

-- Move Tabs - Left/Right
map("n", "<leader>th", ":-tabmove<CR>", { silent = true })
map("n", "<leader>tl", ":+tabmove<CR>", { silent = true })

-- Go To - Next/Prev
map("n", "<leader>tn", ":tabnext<CR>", { silent = true })
map("n", "<C-l>", ":tabnext<CR>", { silent = true })
map("n", "<leader>tp", ":tabprevious<CR>", { silent = true })
map("n", "<C-h>", ":tabprevious<CR>", { silent = true })

-- ### Jumping/Scrolling #######################################################

-- Scrolling by
map("n", "<C-j>", "6<C-e>M")
map("n", "<C-k>", "6<C-y>M")

map("n", "<C-d>", "25<C-e>M")
map("n", "<C-u>", "25<C-y>M")

map("n", "<C-[>", "50<C-e>M")
map("n", "<C-]>", "50<C-y>M")

-- Center the screen on file navigation
map("n", "<C-i>", "<C-i>zz")
map("n", "<C-o>", "<C-o>zz")
map("n", "<C-t>", "<C-t>zz")

-- Jump cursor to (the number acts like a scrolloff)
map("n", "<A-j>", "6L") -- lastline
map("n", "<A-k>", "6H") -- firstline
map("n", "<A-l>", "M") -- middle

-- ### Windows #################################################################

-- Resize Horizontal
map("n", "<Up>", "3<C-w>+")
map("n", "<Down>", "3<C-w>-")

-- Resize Vertical
map("n", "<Left>",  "3<C-w>>")
map("n", "<Right>", "3<C-w><")

-- Splits
map("n", "<leader>ws", "<C-w>s")
map("n", "<leader>wv", "<C-w>v")

-- Change current window to a new tab
map("n", "<leader>wt", "<C-w>T")

-- Closes every other window and every other tab
map("n", "<leader>wo", "<cmd>tabonly<Enter><cmd>only<Enter>", { silent = true })

-- ### String Utils ###########################################################

-- Find-Replace
map("n", "<leader>ss", ":%s/")
map("v", "<leader>ss", ":s/")

local f = require("didorgas.string-functions")

-- Remove trailing spaces
map("n", "<leader>s1", f.remove_trailing)
