vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
 
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- keys for tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close curent tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Go to previou tab"})

-- keys for file explore 
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {desc = "Toggle file explorer"})
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {desc = "Toggle file explorer on cursor"})
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {desc = "Collapse file explorer"})
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {desc = "Refresh file explorer "})

-- keys fo telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd"})
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files"})
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd"})
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd"})

-- keys for auto-session
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", {desc = "Restore session for cwd"})
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", {desc = "Save session for auto session root dir"})

