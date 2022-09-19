local opt = vim.opt

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.autoread = true                   -- Auto update file on external change
opt.fileencoding = 'utf-8'            -- Encode in UTF-8
opt.timeoutlen = 500

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true                   -- Show line number
opt.relativenumber = true           -- Show relative line number
opt.numberwidth = 2                 -- Minimum number coloum width
opt.scrolloff = 8                   -- Minimum number of lines to show
opt.sidescrolloff = 8               -- Minimum number of coloums to show
opt.cursorline = true               -- Show underline
-- opt.showmatch = true                -- Highlight matching parenthesis
-- opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
-- opt.colorcolumn = '72'      -- Line lenght marker at 80 columns
-- opt.splitright = true       -- Vertical split to the right
-- opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true               -- Ignore case letters when search
opt.smartcase = true                -- Ignore lowercase for the whole pattern
opt.wrap = false

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.autoindent = true       -- Indent automatically
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.history = 100           -- Remember N lines in history
opt.undofile = true
opt.swapfile = false                  -- Don't use swapfile
