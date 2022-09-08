vim.cmd [[
    let NERDTreeIgnore = [
      \ 'node_modules',
      \ 'deps', 'obj', 'bin',
      \ 'target', '__pycache__', '.git', '.dist', '.next', 'dist' ]
]]

vim.cmd [[ let NERDTreeWinSize = 40 ]]

vim.cmd [[ let NERDTreeHijackNetrw = 1 ]]

vim.cmd [[ let NERDTreeShowHidden = 1 ]]

vim.cmd [[ let NERDTreeMinimalUI = 1 ]]

vim.cmd [[ let NERDTreeMinimalMenu = 1 ]]

vim.keymap.set("n", "<leader>ft", "<cmd>NERDTreeFind<Enter>")
vim.keymap.set("n", "<C-b>", "<cmd>NERDTreeToggle<Enter>")
