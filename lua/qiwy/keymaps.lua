
vim.g.mapleader = " "

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true, desc = "Buscar archivos" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Buscar texto" })

-- NvimTree toggles
vim.keymap.set("n", "<F3>", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle NvimTree (F3)" })
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle NvimTree (Ctrl+B)" })

-- NvimTree custom mappings (on_attach)
local M = {}

M.my_on_attach = function(bufnr)
  local ok, api = pcall(require, "nvim-tree.api")
  if not ok then
    vim.notify(" nvim-tree.api no disponible", vim.log.levels.ERROR)
    return
  end

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Subir un nivel"))
  vim.keymap.set("n", "?", api.tree.toggle_help, opts("Ayuda"))
end

return M
