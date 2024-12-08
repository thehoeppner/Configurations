local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- move cursor down 5 lines
keymap("n", "J", "5j", opts)

-- move cursor up 5 lines
keymap("n", "K", "5k", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- general keymaps
keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({"n", "v"}, "<leader>e", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({"n", "v"}, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
keymap({"n", "v"}, "<leader>f", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap({"n", "v"}, "<leader>x", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")
keymap({"n", "v"}, "<leader>r", "<cmd>lua require('vscode').action('editor.action.rename')<CR>")

-- navigate editor groups
keymap({"n", "v"}, "<leader>h", "<cmd>lua require('vscode').action('workbench.action.focusLeftGroup')<CR>")
keymap({"n", "v"}, "<leader>j", "<cmd>lua require('vscode').action('workbench.action.focusBelowGroup')<CR>")
keymap({"n", "v"}, "<leader>k", "<cmd>lua require('vscode').action('workbench.action.focusAboveGroup')<CR>")
keymap({"n", "v"}, "<leader>l", "<cmd>lua require('vscode').action('workbench.action.focusRightGroup')<CR>")

-- got to definition
keymap({"n", "v"}, "<leader>gdp", "<cmd>lua require('vscode').action('editor.action.peekDefinition')<CR>")
keymap({"n", "v"}, "<leader>gh", "<cmd>lua require('vscode').action('editor.action.showDefinitionPreviewHover')<CR>")
keymap({"n", "v"}, "<leader>gi", "<cmd>lua require('vscode').action('editor.action.goToImplementation')<CR>")
keymap({"n", "v"}, "<leader>gpi", "<cmd>lua require('vscode').action('editor.action.peekImplementation')<CR>")
keymap({"n", "v"}, "<leader>gr", "<cmd>lua require('vscode').action('editor.action.referenceSearch.trigger')<CR>")
keymap({"n", "v"}, "<leader>gt", "<cmd>lua require('vscode').action('editor.action.goToTypeDefinition')<CR>")
keymap({"n", "v"}, "<leader>gpt", "<cmd>lua require('vscode').action('editor.action.peekTypeDefinition')<CR>")

-- navigate editor tabs
keymap({"n", "v"}, "<leader>L", "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>")
keymap({"n", "v"}, "<leader>H", "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>")

-- navigate forward / backwards
keymap({"n", "v"}, "<leader>n", "<cmd>lua require('vscode').action('workbench.action.navigateBack')<CR>")
keymap({"n", "v"}, "<leader>N", "<cmd>lua require('vscode').action('workbench.action.navigateForward')<CR>")