vim.opt.clipboard = 'unnamedplus' 

-- Tab
vim.opt.tabstop = 4            
vim.opt.softtabstop = 4        
vim.opt.shiftwidth = 4         
vim.opt.expandtab = true       

-- UI config
vim.opt.number = true          
vim.opt.relativenumber = false
vim.opt.cursorline = true     
-- vim.opt.termguicolors = true
vim.opt.showmode = false     

-- Searching
vim.opt.incsearch = true       
vim.opt.hlsearch = false       
vim.opt.ignorecase = true      
vim.opt.smartcase = true       

vim.cmd.colorscheme('embark')

vim.api.nvim_set_hl(0, "Normal",      { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC",    { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn",  { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
