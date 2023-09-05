-- Override some of the default settings for LazyVim and its plugins.

return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
      },
    },
  },

  {
    "folke/flash.nvim",
    enabled = false,
    keys = {},
  },
}
