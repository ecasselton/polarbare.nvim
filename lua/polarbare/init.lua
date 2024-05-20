local polarbare = {}

CheckIfDotfile = function(git_dir, work_tree)
	buf_name = vim.api.nvim_buf_get_name(0)
	if buf_name == "" then
		return false
	end
	local command = "/usr/bin/git --git-dir="..git_dir.." --work-tree="..work_tree.." ls-files --error-unmatch "..buf_name

	vim.fn.system(command)
	local exit_code = vim.v.shell_error

	if exit_code == 0 then
		return true
	else
		return false
	end
end

polarbare.setup = function(opts)
	local default_opts = {
		git_dir = "~/.dotfiles",
		work_tree = "~",
	}

	local options = vim.tbl_deep_extend("force", default_opts, opts)

	options.git_dir = vim.fn.expand(options.git_dir)
	options.work_tree = vim.fn.expand(options.work_tree)

	-- print(vim.inspect(options))

	if CheckIfDotfile(options.git_dir, options.work_tree) then
		vim.env.GIT_DIR = options.git_dir
		vim.env.GIT_WORK_TREE = options.work_tree
	end
end

return polarbare
