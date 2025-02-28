return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
  opts = {},
  config = function(_, opts)
    require('nvim-tree').setup(opts)
  end,
}
