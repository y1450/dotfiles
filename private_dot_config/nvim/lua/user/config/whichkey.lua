local status_ok, which_key = pcall(require, "which-key")
if not status_ok then return end

local setup = {
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enable = true,
      suggestions = 20,
    },
    presets = {
      operators = false,
      motions = true,
      text_objexts = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  icons = {
    breadcrumb = ">>",
    group = "+",
    separator = "|",
  },
  popup_mappings = {
    scroll_up = "<c-u>",
    scroll_down = "<c-d>",
  },
  window = {
    border = "single",
    position = "bottom",
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25,},
    width = { min = 20, max = 50,},
    spacing = 3,
    align = "left",
  },
  ignore_missing = true,
  hidden = {
    "<silent>",
    "<cmd>",
    "<cr>",
    "call",
    "lua",
    "^:",
    "^ ",
  },
  show_help = true,
  triggers = "auto",
  triggers_blacklist = {
    i = { "j", "k", },
    v = { "j", "k", },
  },
}

local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

local mappings = {
  ["w"] = { "<cmd>w!<cr>", "Save", },
  ["q"] = { "<cmd>q!<cr>", "Quit", },
  ["h"] = { "<cmd>nohlsearch<cr>", "No highlight", },
  ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer", },

  b = {
    name = "Buffers",
    b = {
      "<cmd>Telescope buffers show_all_buffers=true theme=get_dropdown<cr>",
      "All buffers",
    },
    t = {
      "<cmd>Telescope current_buffer_tags theme=get_dropdown<cr>",
      "Tags in current buffer",
    }
  },

  f = {
    name = "Files",
    f = {
      "<cmd>Telescope find_files theme=get_dropdown<cr>",
      "Find files",
    },
    g = {
      "<cmd>Telescope git_files theme=get_dropdown<cr>",
      "Git files",
    },
  },

  g = {
    name = "Git",
    g = {
      "<cmd>Telescope git_status<cr>",
      "Telescope: changed file in index",
    },
    s = {
      "<cmd>Git<cr>",
      "Open Fugitive",
    },
    w = {
      "Worktrees",
    },
  },
  s = {
    name = "Search",
    p = {
      "<cmd>Telescope live_grep theme=get_dropdown<cr>",
      "Find in project",
    },
    u = {
      "<cmd>Telescope grep_string theme=get_dropdown<cr>",
      "Search word under cursor in project",
    },
    t = {
      "<cmd>Telescope tags theme=get_dropdown<cr>",
      "Tags in Project",
    },
  },
}

which_key.setup(setup)
which_key.register(mappings, opts)
