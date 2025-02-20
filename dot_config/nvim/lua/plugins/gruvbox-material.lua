return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_background = "dark"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_cursor = "auto"
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true
      vim.g.gruvbox_material_transparent_background = true

      vim.cmd.colorscheme "gruvbox-material"
    end,
  },
}
