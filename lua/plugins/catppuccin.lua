return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,  -- Alta prioridad para cargar primero
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",  -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = false,
          telescope = true,
          -- Para otros plugins que tengas
          mason = true,
          which_key = true,
        }
      })
      
      -- Establecer el colorscheme DESPUÉS de configurarlo
      vim.cmd.colorscheme("catppuccin")
    end,
  }
}
