return {
  "andweeb/presence.nvim",
  --jiriks74/presence.nvim
  event = "UIEnter",
  opts = {
auto_update = true,
			neovim_image_text = "Punya Gw",
			main_image = "neovim",
			client_id = "1315995894725873737",
			log_level = nil,
			debounce_timeout = 10,
			enable_line_number = false,
			blacklist = {},
			blacklist_repos = {},
			file_assets = {},
			show_time = true,

			--button configuration
			buttons = function(buffer, repo_url)
				if repo_url then
					return {
						{ label = "View Repository", url = repo_url },
						{ label = "Contribute", url = repo_url .. "/issues" },
					}
				else
					return nil -- Tidak menampilkan tombol jika tidak ada repo_url
				end
			end,

			-- Rich Presence text options
			editing_text = "Editing %s", -- Text for editing activity
			file_explorer_text = "Browsing %s", -- Text for file explorer
			git_commit_text = "Committing changes", -- Text for Git activity
			plugin_manager_text = "Managing plugins", -- Text for plugin manager
			reading_text = "Reading file %s", -- Text for read-only files
			workspace_text = "Workspace: %s", -- Text for workspace or Git repository
  },
}

