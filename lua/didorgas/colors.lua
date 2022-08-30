vim.opt.background = "dark"

-- The configuration options should be placed before `colorscheme sonokai`.
vim.cmd [[ let g:sonokai_style = 'shusia' ]]
vim.cmd [[ let g:sonokai_better_performance = 1 ]]

vim.cmd [[ colorscheme sonokai ]]

-- Transparency
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi LineNr guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi SignColumn guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi EndOfBuffer guibg=NONE ctermbg=NONE ]]
