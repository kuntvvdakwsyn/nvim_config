return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true,
                    },
                },
                show_buffer_close_icons = true,
                show_close_icon = false,
            },
        })
        local opts = { silent = true }

        vim.keymap.set("n", "<S-k>", "<cmd>BufferLineCycleNext<CR>", vim.tbl_extend("force", opts, { desc = "Buffer dreapta" }))
        vim.keymap.set("n", "<S-j>", "<cmd>BufferLineCyclePrev<CR>", vim.tbl_extend("force", opts, { desc = "Buffer stânga" }))
      vim.keymap.set("n", "<leader>n", "<cmd>enew<CR>", vim.tbl_extend("force", opts, { desc = "Deschide buffer nou" }))
        vim.keymap.set("n", "<leader>d", "<cmd>bdelete<CR>", vim.tbl_extend("force", opts, { desc = "Închide buffer curent" }))
    end,
}
