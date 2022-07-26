local status_ok, telescope = pcall(require, "telescope")
if not status_ok then return end

local actions = require "telescope.actions"

telescope.setup {
  path_display = { "smart", },
  defaults = {
    layout_strategy = "flex",
    scroll_strategy = "cycle",
  },
  mappings = {
    i = {
      ["<c-n>"] = actions.cycle_history_next,
      ["<c-p>"] = actions.cycle_history_prev,
      ["<c-j>"] = actions.move_selection_next,
      ["<c-k>"] = actions.move_selection_previous,
      ["<c-c>"] = actions.close,
      ["<down>"] = actions.move_selection_next,
      ["<up>"] = actions.move_selection_previous,
      ["<cr>"] = actions.select_default,
      ["<c-x>"] = actions.select_horizontal,
      ["<c-v>"] = actions.select_vertical,
      ["<c-t>"] = actions.select_tab,
      ["<c-u>"] = actions.preview_scrolling_up,
      ["<c-d>"] = actions.preview_scrolling_down,
      ["<pageup>"] = actions.preview_scrolling_up,
      ["<pagedown>"] = actions.preview_scrolling_down,
      ["<tab>"] = actions.toggle_selection + actions.move_selection_worse,
      ["<s-tab>"] = actions.toggle_selection + actions.move_selection_better,
      ["<c-q>"] = actions.send_to_qflist + actions.open_qflist,
      ["<m-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      ["<c-l>"] = actions.complete_tag,
      ["<c-_>"] = actions.which_key,
    },

    n = {
      ["<esc>"] = actions.close,
      ["<cr>"] = actions.select_default,
      ["<c-x>"] = actions.select_horizontal,
      ["<c-v>"] = actions.select_vertical,
      ["<c-t>"] = actions.select_tab,
      ["<tab>"] = actions.toggle_selection + actions.move_selection_worse,
      ["<s-tab>"] = actions.toggle_selection + actions.move_selection_better,
      ["<c-q>"] = actions.send_to_qflist + actions.open_qflist,
      ["<m-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      ["j"] = actions.move_selection_next,
      ["k"] = actions.move_selection_previous,
      ["<s-h>"] = actions.move_to_top,
      ["<s-m>"] = actions.move_to_middle,
      ["<s-l>"] = actions.move_to_bottom,
      ["<down>"] = actions.move_selection_next,
      ["<up>"] = actions.move_selection_previous,
      ["gg"] = actions.move_to_top,
      ["<s-g>"] = actions.move_to_bottom,
      ["<c-u>"] = actions.preview_scrolling_up,
      ["<c-d>"] = actions.preview_scrolling_down,
      ["?"] = actions.which_key,
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  },
}

telescope.load_extension("frecency")
telescope.load_extension("fzy_native")
telescope.load_extension("fzy_native")
telescope.load_extension("git_worktree")
