return {
  -- Markdown 实时预览
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.g.mkdp_auto_start = 0 -- 打开时不自动预览
      vim.g.mkdp_auto_close = 1 -- 切换 buffer 自动关闭
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_browser = "" -- 留空使用默认浏览器
    end,
  },

  -- 终端内预览 (glow)
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = true,
  },

  -- Markdown 编辑增强
  {
    "jakewvincent/mkdnflow.nvim",
    ft = { "markdown" },
    config = function()
      require("mkdnflow").setup({
        modules = {
          bib = false,
          conceal = true,
          cursor = true,
          folds = false,
          links = true,
          lists = true,
          maps = true,
          tables = true,
        },
      })
    end,
  },

  -- Treesitter 语法支持
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "markdown", "markdown_inline" },
    },
  },

  -- 格式化 / Lint
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { "prettier" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint" },
      },
    },
  },
}
