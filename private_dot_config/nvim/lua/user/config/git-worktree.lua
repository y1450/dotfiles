local status_ok, git_worktree = pcall(require, "gitsigns")
if not status_ok then return end

git_worktree.setup()
