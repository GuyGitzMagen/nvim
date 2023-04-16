local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


return require('lazy').setup({
{
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {
      diagnostics = { enable = true },
      git = { ignore = false}
    } end
  },
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
    -- Additional textobjects for treesitter
  'nvim-treesitter/nvim-treesitter-textobjects',
  'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip', -- Snippets plugin
  'mjlbach/onedark.nvim',
    -- Add indentation guides even on blank lines
  -- 'lukas-reineke/indent-blankline.nvim',
    -- Add git related info in the signs columns and popups
  { 'lewis6991/gitsigns.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  {"akinsho/toggleterm.nvim", config = function()
  require("toggleterm").setup()
  end},
  'folke/trouble.nvim',
  -- use { 'rcarriga/vim-ultest', requires = {'vim-test/vim-test'}, run = ':UpdateRemotePlugins' }
  'mhartington/formatter.nvim',
  'mfussenegger/nvim-dap',
  'mfussenegger/nvim-dap-python',
  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },
  {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  },
  -- use { 'Pocco81/AutoSave.nvim' }
  -- use { 'williamboman/nvim-lsp-installer', requires = { 'neovim/nvim-lspconfig' } }
  { 'Pocco81/DAPInstall.nvim' },
  { 'David-Kunz/jester' },
  {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'kyazdani42/nvim-web-devicons',
  },
  config = function ()
    require"octo".setup()
  end
},
  {'nvim-telescope/telescope-fzf-native.nvim', build = 'make', lazy=false },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {}
  end
},
 {'simeji/winresizer'},
 {'mustache/vim-mustache-handlebars'},
 {'github/copilot.vim'},
 { 'tpope/vim-fugitive' },
  {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "haydenmeade/neotest-jest",
    "nvim-neotest/neotest-python",
  }
},
{ "mxsdev/nvim-dap-vscode-js", dependencies = {"mfussenegger/nvim-dap"} },
 { "luukvbaal/stabilize.nvim" },
   {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "haydenmeade/neotest-jest",

},
})
