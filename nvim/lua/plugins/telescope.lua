return {
  "nvim-telescope/telescope.nvim",   -- Plugin name
  dependencies = { "nvim-lua/plenary.nvim" },  -- Ensure plenary is installed
  config = function()
    local telescope = require('telescope')

    -- Telescope setup
    telescope.setup({
      defaults = {
        prompt_position = "top",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          preview_width = 0.5,
        },
      },
    })

    -- Keymaps for Telescope
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end,
}
