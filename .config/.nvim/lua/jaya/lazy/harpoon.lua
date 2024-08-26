return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local ui = require("harpoon.ui")
		local mark = require("harpoon.mark")

		vim.keymap.set("n", "mm", ui.toggle_quick_menu, { desc = "Open Harpoon" })
		vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd file to Harpoon" })
	end,
}
