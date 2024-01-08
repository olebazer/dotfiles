-- nightfox colorscheme

return {
	"EdenEast/nightfox.nvim",
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				compile_path = vim.fn.stdpath("cache") .. "/nightfox",
				compile_file_suffix = "_compiled",
				transparent = false,
				terminal_colors = true,
				dim_inactive = false,
				module_default = true,
				colorblind = {
					enable = false,
					simulate_only = false,
					severity = {
						protan = 0,
						deutan = 0,
						tritan = 0,
					},
				},
				styles = {
					comments = "italic",
					conditionals = "italic",
					constants = "NONE",
					functions = "bold",
					keywords = "NONE",
					numbers = "NONE",
					operators = "NONE",
					strings = "NONE",
					types = "NONE",
					variables = "NONE",
				},
				inverse = {
					match_paren = false,
					visual = false,
					search = false,
				},
				modules = {},
			},
			palettes = {},
			specs = {},
			groups = {},
		})
		--vim.cmd.colorscheme("carbonfox")
	end,
}
