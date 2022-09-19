require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  ensure_installed = {
    "c",
    "lua",
    "python",
    "rust",
    "scala",
    "java",
    "bash",
    "fish",
    "json",
    "toml",
    "yaml",
  },
}

-- Options to make tree-sitter do folding
-- Maybe move these options to options file later
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- Do not fold automatically when opening file
vim.opt.foldlevelstart = 99
