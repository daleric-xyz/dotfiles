-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.yaml" },

  -- Git
  { import = "astrocommunity.git.neogit" },

  -- Editing
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },

  -- Picker
  { import = "astrocommunity.fuzzy-finder.snacks-picker" },

  -- Sed
  { import = "astrocommunity.search.grug-far-nvim" },
  -- { import = "astrocommunity.search.nvim-spectre" },

  -- Colorscheme
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },
}
