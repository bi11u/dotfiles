-- Set lualine as statusline
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "gruvbox-material",
				section_separators = { left = " ", right = " " },
				component_separators = "",
			},
		})
	end,
}
