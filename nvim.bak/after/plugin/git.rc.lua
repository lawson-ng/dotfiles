local status, git = pcall(require, "git")
if not status then return end

git.setup({
-- Open blame window
-- Open file/folder in git repository
	keymaps = {
		blame = "<Leader>gb",
		browse = "<Leader>go",
	},
})