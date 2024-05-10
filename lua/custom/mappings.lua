---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<M-O>"] = { ":OrganizeImports <CR>", "OrganizeImports" },
    ["<S-M-Down>"] = { ":Git next_hunk <CR> :Git preview_hunk_inline <CR>", "Git next hunk" },
    ["<S-M-Up>"] = { ":Git prev_hunk <CR> :Git preview_hunk_inline <CR>", "Git previous hunk" },
    ["<S-M-z>"] = { ":Git reset_hunk <CR>", "Git reset hunk" },
    ["<M-_>"] = { ":Git preview_hunk <CR>", "Git preview hunk" },
    ["<leader>op"] = { ":Neoformat prettier <CR>", "Format with prettier" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
