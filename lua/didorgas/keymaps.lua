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
map("n", "<C-Space>", "i <Esc>l")

-- Scrolling (Needed on Windows/WSL)
map("n", "<C-j>", "6<C-e>")
map("n", "<C-k>", "6<C-y>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Jump cursor to
map("n", "<A-j>", "6L") -- lastline
map("n", "<A-k>", "6H") -- firstline
map("n", "<A-l>", "M") -- middle

-- Move Text
map("v", "<C-j>", ":move '>+1<CR>gv-gv", { silent = true })
map("v", "<C-k>", ":move '<-2<CR>gv-gv", { silent = true })
map("v", ">", ">gv", { silent = true })
map("v", "<", "<gv", { silent = true })

-- Easy Register Copy/Cut to x
map("v", "<A-y>", "\"xy")
map("v", "<A-d>", "\"xd")
map("n", "<A-p>", "\"xp")

-- Easy Register Copy/Cut to/from System Clipboard (:checkhealth if not working)
map("v", "<leader>sy", "\"+y")
map("v", "<leader>sd", "\"+d")
map("n", "<leader>sp", "\"+p")

-- Quickfix
map("n", "<A-n>", "<cmd>cnext<Enter>")
map("n", "<A-p>", "<cmd>cprev<Enter>")

-- ### String Utils ###########################################################

-- Find-Replace
map("n", "<leader>ss", ":%s/")
map("v", "<leader>ss", ":s/")

-- Remove trailing spaces
map("n", "<leader>s1",
    "<cmd>lua require('didorgas.string-functions').remove_trailing()<Enter>")

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
