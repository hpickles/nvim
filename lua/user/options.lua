local set = vim.opt;

set.backup = false                          -- creates a backup file
set.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
set.cmdheight = 1                           -- more space in the neovim command line for displaying messages
set.completeopt = { "menuone", "noselect" } -- mostly just for cmp
set.conceallevel = 0                        -- so that `` is visible in markdown files
set.fileencoding = "utf-8"                  -- the encoding written to a file
set.hlsearch = true                         -- highlight all matches on previous search pattern
--set.ignorecase = true                       -- ignore case in search patterns
--set.mouse = "a"                             -- allow the mouse to be used in neovim
set.pumheight = 10                          -- pop up menu height
set.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
--set.showtabline = 0                         -- always show tabs
--set.smartcase = true                        -- smart case
--set.smartindent = true                      -- make indenting smarter again
set.splitbelow = true                       -- force all horizontal splits to go below current window
set.splitright = true                       -- force all vertical splits to go to the right of current window
set.swapfile = false                        -- creates a swapfile
set.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
set.undofile = true                         -- enable persistent undo
set.updatetime = 300                        -- faster completion (4000ms default)
set.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- Tab settings
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = false
set.autoindent = true
--set.expandtab = true                        -- convert tabs to spaces
--set.shiftwidth = 2                          -- the number of spaces inserted for each indentation
--set.tabstop = 2                             -- insert 2 spaces for a tab

set.cursorline = true                       -- highlight the current line

-- Add relative line numbers
set.relativenumber = true
set.number = true

set.laststatus = 3
set.showcmd = false
set.ruler = true
set.numberwidth = 4                         -- set number column width to 2 {default 4}
set.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
set.wrap = false                            -- display lines as one long line
--set.scrolloff = 8                           -- is one of my fav
--set.sidescrolloff = 8
set.guifont = "monospace:h17"               -- the font used in graphical neovim applications
--set.fillchars.eob=" "
--set.shortmess:append "c"
--set.whichwrap:append("<,>,[,],h,l")
--set.iskeyword:append("-")

-- Add current path to file search
set.path:append("**")

-- Displaying Tabs
set.list = true
set.listchars = { tab = "|>", trail = "~" }

-- Spelling
-- ? May work?  It's my best guess
set.spell = true
set.spelllang = "en_us"

-- Misspelled words are underlined
vim.cmd("hi clear SpellBad")
vim.cmd("hi SpellBad cterm = underline")
-- Force the cursor onto a new line after 80 characters
set.textwidth = 80
-- However, in Git commit messages, let’s make it 72 characters
--autocmd FileType gitcommit set textwidth = 72
-- Colour the 81st (or 73rd) column so that we don’t type over our limit
set.colorcolumn = "+1"
-- In Git commit messages, also colour the 51st column (for titles)
--autocmd FileType gitcommit set colorcolumn+ = 51

-- Allow switching buffers without saving.
set.hidden = true

-- When opening or jumping to a buffer use the open window if it exists.
set.switchbuf = "useopen"
