-- require("onedarkpro").setup({
--     options = {
--         transparency = true
--     }
-- })
-- vim.cmd("colorscheme onedark_vivid")


require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'main',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	old_vert_split = false,
	im_nc_background = false,
	isable_background = false,
	isable_float_background = false,
	isable_italics = false,

	-- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
	       background = 'base',
	       background_nc = '_experimental_nc',
	       panel = 'surface',
	       panel_nc = 'base',
	       border = 'highlight_mid',
	       comment = 'muted',
	       link = 'iris',
	       punctuation = '#cecacd',

	       error = 'love',
	       hint = 'iris',
	       info = 'foam',
	       warn = 'gold',

	       headings = {
	       	h1 = 'iris',
	       	h2 = 'foam',
	       	h3 = 'rose',
	       	h4 = 'gold',
	       	h5 = 'pine',
	       	h6 = '#286983',
	       }
	       -- or set all headings at once
	       -- headings = 'subtle'
       },

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
	--        ColorColumn = { bg = 'rose' },

	       -- Blend colours against the "base" background
	       CursorLine = { bg = 'foam', blend = 10 },
	       StatusLine = { fg = 'love', bg = 'love', blend = 10 },

	       -- By default each group adds to the existing config.
	       -- If you only want to set what is written in this config exactly,
	       -- you can set the inherit option:
	       Search = { bg = 'gold', inherit = false },
       },	
})

-- Set colorscheme after options
vim.cmd('colorscheme rose-pine')
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
