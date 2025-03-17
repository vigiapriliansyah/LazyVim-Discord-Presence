
    {
    'vyfor/cord.nvim',
    build = ':Cord update',
    event = 'VeryLazy',
    config = function()
      require('cord').setup{
        enabled = true,
        log_level = vim.log.levels.OFF, -- Matikan log jika tidak butuh debugging
        editor = {
          client = "nvchad", -- Menggunakan NVChad sebagai editor
          tooltip = "Neovim + NVChad is 🔥",
          icon = nil, -- Bisa diisi dengan custom icon jika ingin
        },
        display = {
          theme = 'atom',
          flavor = 'dark',
          swap_field = false,
          swap_icon = false,
        },
        timestamp = {
          enabled = true,
          reset_on_idle = false,
          reset_on_change = false,
        },
        idle = {
          enabled = true,
          timeout = 500000, -- 8 menit sebelum status berubah menjadi "Idle"
          show_status = true,
          ignore_focus = true,
          unidle_on_focus = true,
          smart_idle = true,
          details = "Aku Tidur💤",
          state = nil,
          tooltip = "💤",
          icon = nil,
        },
        text = {
          workspace = function(opts) return "Working on " .. opts.workspace end,
          viewing = function(opts) return "Viewing " .. opts.filename end,
          editing = function(opts) return "Editing " .. opts.filename end,
          file_browser = function(opts) return "Browsing files in " .. opts.name end,
          plugin_manager = "Managing plugins",
          lsp = function(opts) return "Configuring LSP" end,
          vcs = function(opts) return "Committing changes" end,
          diagnostics = function(opts) return "Fixing problems" end,
          terminal = function(opts) return "Running commands" end,
          dashboard = "NVChad Home",
        },
         buttons = {
          {
            label = "View Repository",
            url = function(opts) return opts.repo_url end, -- Otomatis ambil URL repo Git jika ada
          },
        },
        assets = nil,
        variables = nil,
         hooks = {
          ready = nil,
          shutdown = nil,
          pre_activity = nil,
          post_activity = nil,
          idle_enter = nil,
          idle_leave = nil,
          workspace_change = nil,
        },
        plugin = nil,
        advanced = {
          plugin = {
          autocmds = true,
          cursor_update = 'on_hold',
          match_in_mappings = true,
          server = {
            update = "fetch",
            pipe_path = nil,
            executable_path = nil,
            timeout = 300000,
          },
          discord = {
            reconnect = {
              enabled = false,
              interval = 5000,
              initial = true,
            },
          },

          }
        },
      }
    end
  },
