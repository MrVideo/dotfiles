require('cmp').setup {
	enabled = function()
		return vim.bo.filetype ~= 'markdown'
	end
}
