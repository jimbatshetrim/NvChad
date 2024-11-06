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
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    -- Accept Copilot suggestion with <C-l>
    ["<C-l>"] = {
      function()
        local copilot_accept = vim.fn["copilot#Accept"]()
        if copilot_accept == "" then
          return "<C-l>" -- Fallback if no Copilot suggestion
        end
        return copilot_accept
      end,
      "Accept Copilot suggestion",
      opts = { expr = true, noremap = true, silent = true },
    },

    -- Cycle to the next Copilot suggestion with <C-j>
    ["<C-j>"] = {
      function()
        vim.fn["copilot#Next"]()
      end,
      "Next Copilot suggestion",
    },

    -- Cycle to the previous Copilot suggestion with <C-k>
    ["<C-k>"] = {
      function()
        vim.fn["copilot#Previous"]()
      end,
      "Previous Copilot suggestion",
    },
  },
}

-- more keybinds!

return M
