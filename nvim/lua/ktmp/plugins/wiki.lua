return {
  "vimwiki/vimwiki",
  event = "BufEnter *.md",
  keys = { "<leader>ww", "<leader>wt", "<leader>ws", "<leader>wd>", "<leader>wr>" },
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Documents/Wiki/",
        syntax = "markdown",
        ext = "md",
      },
    }
  end,
}
