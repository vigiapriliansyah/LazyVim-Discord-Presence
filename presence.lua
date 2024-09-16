return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  opts = {
    auto_update = true,
    neovim_image_text = "How do I get out of this place?",
    main_image = "main_image",
    log_level = "debug",
    debounce_timeout = 10,
    enable_line_number = true,
    buttons = {
      {
        label = "View Repository",
        url = "https://github.com/vigiapriliansyah",
      },
    },
    show_time = true,

    --Rich Presence text options
    editing_text = "Editing %s",
    git_commit_text = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text = "Reading %s",
    workspace_text = "Working on %s",
    line_number_text = "Line %s out of %s",
  },
}
