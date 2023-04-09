require("nvim.plugin.packer_compiled")

file = io.open("plugins.txt", "a")
plugins = _G.packer_plugins
for key, value in pairs(plugins) do
	file:write(key .. " " .. value.url .. "\n")
end
file:close()
