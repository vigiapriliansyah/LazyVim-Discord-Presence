return {
    {
    'vyfor/cord.nvim',
    build = 'cargo build --release', --change to ./build if using linux, and move the cord.dll from release to cord.nvim
    event = 'VeryLazy',
    config = function()
      require('cord').setup {
        usercmds = true,
        log_level = 'error',
        timer = {
          interval = 1500,
          reset_on_idle = false,
          reset_on_change = false,
        },
        editor = {
          client = 'nvchad',
          tooltip = 'The Superior Text Editor',
          image = nil,
        },
        display = {
          show_time = true,                           -- Display start timestamp
          show_repository = true,                     -- Display 'View repository' button linked to repository url, if any
          show_cursor_position = false,               -- Display line and column number of cursor's position
          swap_fields = false,                        -- If enabled, workspace is displayed first
          swap_icons = false,                         -- If enabled, editor is displayed on the main image
          workspace_blacklist = {},
        },
        idle = {
          enable = true,
          timeout = 300000,
          text = 'Idle',
          show_status = true,
          disable_on_focus = false,
          tooltip = '💤',
          icon = nil,
        },
         text = {
          viewing = 'Viewing {}',
          editing = 'Editing {}',
          file_browser = 'Browsing files in {}',
          plugin_manager = 'Managing plugins in {}',
          lsp_manager = 'Configuring LSP in {}',
          vcs = 'Committing changes in {}',
          workspace = 'Working on {}',
        },
        buttons = {
          {
            label = 'View Repository',
            url = 'git',  -- Otomatis ambil URL repo Git
          },
        },
        -- assets = {
        --   lua = {
        --     name = 'Lua',
        --     icon = '1315995894725873737',  -- ID asset Discord
        --     tooltip = 'Lua Programming',
        --     type = 'language',
        --   },
        --   markdown = {
        --     name = 'Markdown',
        --     icon = '1315995894725873737',  -- ID asset Markdown
        --     tooltip = 'Writing Docs',
        --     type = 'language',
        --   },
        -- }
      }
    end,
  },
