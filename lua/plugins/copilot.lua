return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true, -- 自动触发补全
        keymap = {
          accept = "<C-l>", -- 接受建议
          next = "<C-]>", -- 下一个建议
          prev = "<C-[>", -- 上一个建议
          dismiss = "<C-c>", -- 取消建议
        },
      },
      panel = {
        enabled = true,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
      },
    },
  },
}
