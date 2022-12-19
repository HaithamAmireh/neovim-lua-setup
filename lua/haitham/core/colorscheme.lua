local status, _ = pcall(vim.cmd, "colorscheme shades_of_purple")
if not status then
	print("Colorscheme not found!")
	return
end
