return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup({})
        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():append()
        end)
        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)
        vim.keymap.set("n", "<C-h>", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set("n", "<C-t>", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set("n", "<C-n>", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set("n", "<C-s>", function()
            harpoon:list():select(4)
        end)

        vim.keymap.set("n", "<C-S-P>", function()
            harpoon:list():prev()
        end)
        vim.keymap.set("n", "<C-S-N>", function()
            harpoon:list():next()
        end)

        harpoon:extend({
            UI_CREATE = function(cx)
                vim.keymap.set("n", "<C-S-V>", function()
                    harpoon.ui:select_menu_item({ vsplit = true })
                end, { buffer = cx.bufnr })

                vim.keymap.set("n", "<C-x>", function()
                    harpoon.ui:select_menu_item({ split = true })
                end, { buffer = cx.bufnr })
            end,
        })
    end,
}
