local status, _ = pcall(vim.cmd, "colorscheme pop-punk")
if not status then
	print("Colorscheme not found!")
	return
end
