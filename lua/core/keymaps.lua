vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { silent = true }

keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":q<CR>")

keymap("n", "<C-j>", "<C-d>zz")
keymap("n", "<C-k>", "<C-u>zz")

-- bufferline.lua
keymap("n", "<S-k>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<S-j>", "<cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>n", "<cmd>enew<CR>", opts)
keymap("n", "<leader>d", "<cmd>bdelete<CR>", opts)

-- lsp.lua
vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP keybindings",
    callback = function(event)
        local lsp_opts = { buffer = event.buf, silent = true }

        keymap("n", "gd", vim.lsp.buf.definition, lsp_opts)
        keymap("n", "<leader>k", vim.lsp.buf.hover, lsp_opts)
        keymap("n", "<leader>rn", vim.lsp.buf.rename, lsp_opts)
        keymap("n", "<leader>rr", vim.diagnostic.setloclist, lsp_opts)
        keymap("n", "<leader>re", vim.diagnostic.open_float, lsp_opts)
        keymap("n", "]d", vim.diagnostic.goto_next, lsp_opts)
    end,
})

-- telescope.lua

keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)


-- nvim-tree.lua

vim.keymap.set("n", "<leader>ed", function()
    require("nvim-tree.api").tree.close()
end, { desc = "Close file explorer" })

vim.keymap.set("n", "<leader>e", function()
    require("nvim-tree.api").tree.open()
end, { desc = "Open file explorer" })

-- lazy.lua
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open Lazy" })
