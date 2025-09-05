return {
  -- 主题插件
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          -- 可选: "github_dark", "github_dark_default", "github_dark_colorblind",
          --       "github_light", "github_light_default", "github_light_colorblind"
          theme_style = "github_light_default",
          transparent = false,
        },
      })
    end,
  },

  -- 设置 LazyVim 默认主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_light_default",
    },
  },
}
