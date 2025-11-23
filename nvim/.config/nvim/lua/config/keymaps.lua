local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("i", "jj",
    "<Esc>", { noremap = false })                            -- Exit insert mode with jj
vim.keymap.set("i", "<C-c>", "<Esc>")                        -- Exit insert mode with ctrl+c

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")                 -- Move lines down in visual selection
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")                 -- Move lines up in visual selection

vim.keymap.set("v", "<", "<gv", opts)                        -- Indent lines to the left in visual selection
vim.keymap.set("v", ">", ">gv", opts)                        -- Indent lines to the right in visual selection

vim.keymap.set("n", "J", "mzJ`z")                            -- Join the currnet line with the one below

vim.keymap.set("n", "<C-d>", "<C-d>zz")                      -- Move down in buffer with cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")                      -- Move up in buffer with cursor centered

vim.keymap.set("n", "n", "nzzzv")                            -- Move to the next search result
vim.keymap.set("n", "N", "Nzzzv")                            -- Move to the previous search result

vim.keymap.set("x", "p", [["_dP]])                           -- Paste over selection without yanking it
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])           -- Delete without yanking
vim.keymap.set({ "n", "v" }, "c", [["_c]], opts)             -- Change without yanking
vim.keymap.set("n", "x", '"_x', opts)                        -- Delete character without yanking

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { silent = true }) -- Clear search highlight in normal mode

vim.keymap.set("n", "Q", "<nop>")                            -- Unmaps Q in normal mode

vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace the word under the cursor throughout the entire file" })

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>",
    { silent = true, desc = "Make file executable" })

--split management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-p>", "<C-^>", { desc = "Switch to alternate file" })

-- Other stuff
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- vim.keymap.set('n', '<leader>cd', ':Ex<cr>', { desc = 'Open [E]xplorer' })
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Open Nvim Tree' })
