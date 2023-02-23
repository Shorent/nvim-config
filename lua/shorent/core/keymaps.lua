local keymaps = {}

-- Leader
vim.g.mapleader = " "

-- Telescope
function keymaps.telescope()
    local tb = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', tb.find_files, {})
    vim.keymap.set('n', '<leader>fg', tb.git_files, {})
    vim.keymap.set('n', '<leader>ft', function()
        tb.grep_string({
            search = vim.fn.input("Grep > ")
        });
    end)
    vim.keymap.set('n', '<leader>tt', ':top split term://zsh <CR>', {})
    vim.keymap.set('n', '<leader>tb', ':below split term://zsh <CR>', {})
    vim.keymap.set('n', '<leader>tl', ':left vsplit term://zsh <CR>', {})
end

-- vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

for key, keymap in pairs(keymaps) do
    keymap()
end
