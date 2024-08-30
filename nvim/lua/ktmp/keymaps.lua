vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- EXPLORER
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- SUPERMOVE
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- YANK
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- TABS
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew, { desc = "Create a new tab" })
vim.keymap.set("n", "<leader>to", function()
    vim.cmd.tabedit(vim.fn.expand("%:p:h") .. "/")
end, { desc = "Open file in new tab" })
vim.keymap.set("n", "<leader>tl", vim.cmd.tabnext, { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>th", vim.cmd.tabprevious, { desc = "Go to previous tab" })

-- TERMINAL
vim.keymap.set("n", "<leader>q", function()
    local width = math.floor(vim.o.columns * 0.5)
    local height = math.floor(vim.o.lines * 0.5)
    local buf = vim.api.nvim_create_buf(false, true)
    local win = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width = width,
        height = height,
        col = math.floor((vim.o.columns - width) / 2),
        row = math.floor((vim.o.lines - height) / 2),
        style = "minimal",
        border = "rounded"
    })
    vim.cmd("terminal")
    vim.cmd("startinsert")
end, { desc = "terminal" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:q<CR>", { desc = "Close floating terminal" })

-- SPLITS
vim.keymap.set('n', '<leader>ss', ':split<CR>', { silent = true, desc = "Split window horizontally" })
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { silent = true, desc = "Split window vertically" })
vim.keymap.set('n', '<leader>sr', '<C-w>r', { desc = "Rotate splits clockwise" })
vim.keymap.set('n', '<leader>sR', '<C-w>R', { desc = "Rotate splits counter-clockwise" })
vim.keymap.set('n', '<leader>st', '<C-w>T', { desc = "Move split to new tab" })
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
