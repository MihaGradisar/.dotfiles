# Vim Keybindings Reference

---

## LSP Keybindings (Normal Mode)

- `gl`: Open diagnostic float
- `gd`: Go to definition
- `K`: Hover documentation
- `gs`: Signature help
- `gD`: Go to declaration
- `grr`: Go to references
- `<leader>la`: Code actions
- `<leader>lr`: Rename symbol
- `<leader>v`: Vertical split + go to definition
- `<leader>lf`: LSP Format
- `<leader>cf`: Format with Conform
---

## General Keybindings

**Insert Mode**
- `jj`: Exit insert mode
- `<C-c>`: Exit insert mode

**Visual Mode**
- `J`: Move selected lines down
- `K`: Move selected lines up
- `<`: Indent left and reselect
- `>`: Indent right and reselect

**Normal Mode**
- `J`: Join lines, keep cursor position
- `<C-d>`: Scroll down half page, center cursor
- `<C-u>`: Scroll up half page, center cursor
- `n`: Next search result, center cursor
- `N`: Previous search result, center cursor
- `p`: Paste replacing selection without overwriting yank
- `<leader>d`: Delete without yanking (normal and visual)
- `c`: Change without yanking (normal and visual)
- `x`: Delete char without yanking
- `<C-c>`: Clear search highlight
- `Q`: Disable Q
- `<leader>rw`: Replace word under cursor throughout file
- `<leader>x`: Make current file executable
- `<leader>m`: Split code Blocks
---

## Split Management and Navigation

- `<leader>sv`: Split window vertically
- `<leader>sh`: Split window horizontally
- `<leader>se`: Equalize split sizes
- `<leader>sx`: Close current split
- `<C-h>`: Move to left split
- `<C-l>`: Move to right split
- `<C-j>`: Move to below split
- `<C-k>`: Move to above split
- `<C-p>`: Switch to alternate file

---

## Telescope.nvim Keybindings

**Insert Mode**
- `<C-k>`: Move selection up
- `<C-j>`: Move selection down
- `<C-c>`: Close Telescope popup

**Normal Mode**
- `<C-c>`: Close Telescope popup
- `<leader>ff`: Find files
- `<C-p>`: Git files
- `<leader>fg`: Live grep
- `<leader>fh`: Help tags
- `<leader>fb`: Buffers

---

## Harpoon Keybindings (Normal Mode)

- `<leader>a`: Add current file to Harpoon list
- `<C-e>`: Toggle Harpoon quick menu
- `<C-p>`: Go to previous Harpoon file
- `<C-n>`: Go to next Harpoon file

---

## nvim-treesitter Keybindings (Normal Mode)

**Incremental Selection**
- `<leader>vv`: Initialize selection
- `+`: Increment selection
- `_`: Decrement selection

**Textobjects Selection**
- `af`: Around a function
- `if`: Inner part of a function
- `ac`: Around a class
- `ic`: Inner part of a class
- `ai`: Around an if conditional
- `ii`: Inner part of an if conditional
- `al`: Around a loop
- `il`: Inner part of a loop
- `ap`: Around a parameter
- `ip`: Inner part of a parameter

**Textobjects Movement**
- `[f`: Previous function
- `[c`: Previous class
- `[p`: Previous parameter
- `]f`: Next function
- `]c`: Next class
- `]p`: Next parameter

---

**mini srrround**
- `sa`: Add surrounding in Normal and Visual modesext parameter
- `sd`: Delete surrounding
- `sf`: Find surrounding (to the right)
- `sF`: Find surrounding (to the left)
- `sh`: Highlight surrounding
- `sr`: Replace surrounding
- `sn`: Update `n_lines`
- `l`: Suffix to search with "prev" method
- `n`: Suffix to search with "next" method

---

## Git

- `<leader>gp`: Preview git hunk (gitsigns.nvim)
- `<leader>lg`: Open LazyGit

---

## Other Useful Keybindings (Normal Mode)

- `<leader>q`: Open diagnostic quickfix list
- `<leader>e`: Toggle Nvim Tree file explorer
- `<leader>u`: Toggle Undotree
- `]t`: Jump to next todo comment
- `[t`: Jump to previous todo comment
- `zk`: Jump wiht flash
