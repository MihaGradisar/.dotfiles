local undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Leader settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.timeoutlen = 300

-- Disable file explorer banner
vim.cmd("let g:netrw_banner = 0 ")

-- Cursor settings
vim.opt.guicursor = {
    "n-v-c:block",
    "i-ci:block-blinkwait1000-blinkon100-blinkoff100",
    "r:hor50-blinkwait100-blinkon100-blinkoff100",
}
vim.opt.cursorline = true

-- Line settings
vim.opt.nu = true
vim.opt.relativenumber = true

-- Status line settings 
vim.opt.showmode = false
vim.opt.showcmd = false
-- vim.g.have_nerd_font = false

-- Tabs and indentation settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.breakindent = true
vim.g.editorconfig = true

vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Backup management settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = undodir
vim.opt.undofile = true

if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
    vim.defer_fn(function()
        print("Undo directory created: " .. undodir)
    end, 100)
end

-- Search and navigations settings
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.isfname:append("@-@")

-- Appearance settings
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- UI settings
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Backspace behavior
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.winborder = "rounded"

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Performance settings
vim.opt.updatetime = 250

-- Clipboard
vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)
vim.opt.hlsearch = true

-- Enable mouse
vim.opt.mouse = "a"
