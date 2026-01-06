return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000, -- load early
    config = function()
      require("rose-pine").setup({
        variant = "main",
        dark_variant = "main",
        old_vert_split = false,
        im_nc_background = false,
        isable_background = false,
        isable_float_background = false,
        isable_italics = false,
        groups = {
          background = "base",
          background_nc = "_experimental_nc",
          panel = "surface",
          panel_nc = "base",
          border = "highlight_mid",
          comment = "muted",
          link = "iris",
          punctuation = "#cecacd",
          error = "love",
          hint = "iris",
          info = "foam",
          warn = "gold",
          headings = {
            h1 = "iris",
            h2 = "foam",
            h3 = "rose",
            h4 = "gold",
            h5 = "pine",
            h6 = "#286983",
          },
        },
        highlight_groups = {
          CursorLine = { bg = "foam", blend = 10 },
          StatusLine = { fg = "love", bg = "love", blend = 10 },
          Search = { bg = "gold", inherit = false },
        },
      })

      -- Set the colorscheme
      vim.cmd("colorscheme rose-pine")

      -- Optionally make background transparent
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
}


