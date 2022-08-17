require("nvim-autopairs").setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})

-- this is my mapping with completion-nvim
local remap = vim.api.nvim_set_keymap
local npairs = require("nvim-autopairs")

vim.g.completion_confirm_key = ""

cmp.completion_confirm = function()
	if vim.fn.pumvisible() ~= 0 then
		if vim.fn.complete_info()["selected"] ~= -1 then
			require("completion").confirmCompletion()
			return npairs.esc("<c-y>")
		else
			vim.fn.nvim_select_popupmenu_item(0, false, false, {})
			require("completion").confirmCompletion()
			return npairs.esc("<c-n><c-y>")
		end
	else
		return npairs.check_break_line_char()
	end
	return npairs.esc("<cr>")
end

remap("i", "<CR>", "v:lua.cmp.completion_confirm()", { expr = true, noremap = true })
