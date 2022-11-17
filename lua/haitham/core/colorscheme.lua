local status, _ = pcall(vim.cmd, "colorscheme space-vim-dark")
if not status then
	print("Colorscheme not found!")
	return
end
