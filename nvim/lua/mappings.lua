local km = vim.keymap

km.set("n", "<leader>uu", ":PackerSync<CR>", { desc = "Packer Update (Sync)" })
km.set("n", "<leader>n", "<cmd>enew<CR>", { desc = "New File" })
km.set("n", "<leader>a", "ggVG<c-$>", { desc = "Select All" })
km.set({"i", "v"}, "jk", "<Esc>", { desc = "Exit with jk" })
km.set({"i", "v"}, "kj", "<Esc>", { desc = "Exit with kj"})
km.set("n", "<TAB>", ":bnext<CR>", { desc = "next Buffer"})
km.set("n", "<S-TAB>", ":bprevious<CR>", { desc = "previus Buffer"})
km.set("n", "<C-s>", ":w<CR>", {desc = "Alternate way to save"})
km.set("n", "<C-Q>", ":wq!<CR>", {desc = "Alternate way to exit"})
km.set("n", "<C-c>", "<Esc>", {desc = "control+c to close"})
km.set("v", "<", "<gv", {desc = "better tabbing left"})
km.set("v", ">", ">gv", {desc = "better tabing right"})
-- Disable arrow keys
km.set('', '<up>', '<nop>,', {desc = "disable up"})
km.set('', '<down>', '<nop>', {desc = "disable down"})
km.set('', '<left>', '<nop>', {desc = "disable left"})
km.set('', '<right>', '<nop>', {desc = "disable right"})
-- Clipboard copy
km.set({'n', 'x'}, 'cp', '"+y', {desc = "copy to clipboard"})
km.set({'n', 'x'}, 'cv', '"+p', {desc = "paste from clipboard"})
km.set("n", "<leader><Down>", "<C-W><C-J>", { silent = true, desc = "Window Down" })
km.set("n", "<leader><Up>", "<C-W><C-K>", { silent = true, desc = "Window Up" })
km.set("n", "<leader><Right>", "<C-W><C-L>", { silent = true, desc = "Window Right" })
km.set("n", "<leader><Left>", "<C-W><C-H>", { silent = true, desc = "Window Left" })
km.set("n", "<leader>wr", "<C-W>R", { silent = true, desc = "Window Resize" })
km.set("n", "<leader>=", "<C-W>=", { silent = true, desc = "Window Equalise" })
km.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>", { desc = "Git toggle line blame" })
km.set("n", ' ', "<nop>", {desc = "don't move the cursor in normal mode when using leader"})
km.set("n", "<leader>gg", ":LazyGit<cr>", {desc = "launch lazygit"})
km.set("n", "<C-h>", "<C-w>h", {desc = "move windows to the left"})
km.set("n", "<C-j>", "<C-w>j", {desc = "move windows to the down"})
km.set("n", "<C-k>", "<C-w>k", {desc = "move windows to the up"})
km.set("n", "<C-l>", "<C-w>l", {desc = "move windows to the right"})


-- Keybindings for telescope
km.set("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
km.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
km.set("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")
km.set("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
km.set("n", "<leader>ht", "<CMD>Telescope colorscheme<CR>")


-- F5 processes the document once, and refreshes the view
km.set('i','<F5>', function() require("knap").process_once() end)
km.set('v','<F5>', function() require("knap").process_once() end)
km.set('n','<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
km.set('i','<F6>', function() require("knap").close_viewer() end)
km.set('v','<F6>', function() require("knap").close_viewer() end)
km.set('n','<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
km.set('i','<F7>', function() require("knap").toggle_autopreviewing() end)
km.set('v','<F7>', function() require("knap").toggle_autopreviewing() end)
km.set('n','<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
km.set('i','<F8>', function() require("knap").forward_jump() end)
km.set('v','<F8>', function() require("knap").forward_jump() end)
km.set('n','<F8>', function() require("knap").forward_jump() end)
km.set('n', '<leader>ec', ':e ~/.config/nvim/init.lua<CR>')
km.set('n', '<leader>pl', ':e ~/.config/nvim/lua/plugins.lua<CR>')
km.set('n', '<leader>mp', ':e ~/.config/nvim/lua/mappings.lua<CR>')


--vim-godot

km.set("n", "<F4>", ":GodotRunLast", {desc = "Run last godot scene"})
km.set("n", "<F5>", ":GodotRun", {desc = "Run Godot Game"})
km.set("n", "<F6>", ":GodotRunCurrent", {desc = "Run current scenene"})
km.set("n", "<F7>", ":GodotRunFZF", {desc = "Run godot fuzzy finder"})


-- prime's keymaps
km.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move highlighted items with j, auto tab"})
km.set("v", "K", ":m '<-2<CR>gv=gv",  {desc = "Move highlighted items with k, auto tab"})

km.set("n", "J", "mzJ`z", {desc = "line below, append with space. keeps curosr in place"})

km.set("n", "<C-d>", "<C-d>zz", {desc = "Keeps cursor in middle when 1/2 page jumping"})
km.set("n", "<C-u>", "<C-u>zz", {desc = "Keeps cursor in middle when 1/2 page jumping"})
km.set("n", "n", "nzzzv", {desc = "keeps search centered down"})
km.set("n", "N", "Nzzzv", {desc = "Keeps sarch centered up"})

-- greatest remap ever
km.set("x", "<leader>p", [["_dP]], {desc = "deletes highlighted word, and presurves copied item"})

-- next greatest remap ever : asbjornHaland
km.set({"n", "v"}, "<leader>y", [["+y]], {desc = "yank to system clipboardboard"})
km.set("n", "<leader>Y", [["+Y]], {desc = "yank to system clipboard"})

km.set({"n", "v"}, "<leader>d", [["_d]], {desc = "void refister stuffs"})

-- This is going to get me cancelled
km.set("i", "<C-c>", "<Esc>", {desc = "another way to exit modes"})

km.set("n", "Q", "<nop>", {desc = "just no"})
km.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
km.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc = "quick fix navigation"})
km.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc = "quick fix navigation"})
km.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc = "quick fix navigation"})
km.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc = "quick fix navigation"})

km.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "allows to replace current words"})
km.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, {desc = "allows me to make executable"})
