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
    ["<leader>b"] = {
      "<cmd> Telescope buffers sort_lastused=true sort_mru=true ignore_current_buffer=true <CR>",
      "Find buffers",
    },
    ["<leader><leader>"] = { "<c-6>", "previous buffer" },
    ["<M-,>"] = { "<c-w>5<", "make spilt pane smaller" },
    ["<M-.>"] = { "<c-w>5>", "make spilt pane larger" },
    ["<M-t>"] = { "<c-w>+", "make spilt pane taller" },
    ["<M-s>"] = { "<c-w>-", "make spilt pane smaller" },
    ["<M-Left>"] = { ":e # <CR>", "go to previous file" },
    ["<M-Up>"] = { "<C-u>", "jump up half a screen" },
    ["<M-Down>"] = { "<C-d>", "jump down half a screen" },
    ["<M-/>"] = { ":Twilight <CR>", "Toggle Twilight" },

    ["<M-j>"] = { ":Treewalker Down<CR>", "below function" },
    ["<M-k>"] = { ":Treewalker Up<CR>", "above function" },
    ["<M-h>"] = { ":Treewalker Left<CR>", "left function" },
    ["<M-l>"] = { ":Treewalker Right<CR>", "right function" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
      end,
      "Copilot Accept",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
    },

    ["<C-j>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Next"](), "")
      end,
      "Next Copilot suggestion",
    },

    ["<C-k>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Previous"](), "")
      end,
      "Previous Copilot suggestion",
    },
  },
}

-- more keybinds!

return M
