return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
            "python", "go", "rust", "perl"},
      sync_install = false,
      auto_install = true,
      indent = {
        enable = true
      },
      highlight = {
        enable = true,
      },
    })

  end
}

