
-- Some handy abbreviations

local fn = vim.fn
local cmd = vim.cmd
local api = vim.api


-- Check if packer is already installed. If not, install. 
-- The install path was recommended on the the Packer github page.

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  print("Packer not installed yet. Installing...")
  fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  api.nvim_command("packadd packer.nvim")
end


-- Initialize and configure Packer

local packer = require("packer")

packer.init({
  enable = true,                  -- enable profiling via :PackerCompile profile=true
  threshold = 0,                  -- the amount in ms that a plugins load time must be over for it to be included in the profile
  max_jobs = 20,                  -- Limit the number of simultaneous jobs to prevent PackerSync form being "stuck" (issue #746)
  display = {                     -- Have packer use a popup window
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})


-- The following function returns the 'require' clause to be used in the 'config' 
-- parameter of Packer's 'use' cases.

function setup(name)
  return string.format('require("setup/%s")', name)
end


-- List the plugins to be managed by Packer

packer.startup(function(use)

use({ "wbthomason/packer.nvim" })                                   -- Packer can manage itself
use({ "nvim-lua/plenary.nvim" })                                    -- Collection of functions used by several plugins
use({ "nvim-lua/popup.nvim" })                                      -- Allows for popups to appear
use({ "kyazdani42/nvim-web-devicons", config=setup("devicons") })   -- Add devicons 
use({ "MunifTanjim/nui.nvim" })                                     -- UI component library used by some plugins   
use({ "catppuccin/nvim", config=setup("catppuccin") })              -- The Catppuccin color scheme 
use({ "gelguy/wilder.nvim", config=setup("wilder") })               -- Auto-suggestions at cmdline (:) or when searching with / or ?
use({ "markonm/traces.vim" })                                       -- Range, pattern and substitute preview
use({ "tpope/vim-surround" })                                       -- To wrap text in brackets, parenthesis, xml-tags, ...
use({ "michaeljsmith/vim-indent-object" })                          -- Text object for indented blocks
use({ "vim-scripts/argtextobj.vim" })                               -- Text object for function arguments
use({ "tommcdo/vim-exchange" })                                     -- Easy text swapping operator: cx{motion} and .
use({ "andymass/vim-matchup" })                                     -- Highlight, navigate and operate on sets of matching text. E.g. if-then-else
use({ "godlygeek/tabular" })                                        -- Tabularizing text, e.g. on '=' char with :Tab/=
use({ "mechatroner/rainbow_csv" })                                  -- Visualizing and querying CSV files
use({ "RRethy/vim-illuminate", config=setup("illuminate") })        -- Automatically highlight other uses of the word under the cursor
use({ "lukas-reineke/indent-blankline.nvim" })                      -- Show tiny vertical lines at each indent level
use({ "schickling/vim-bufonly" })                                   -- Delete all buffers except current one with :BufOnly or :Bonly
use({ "famiu/bufdelete.nvim" })                                     -- :Bdelete deletes current buffer without messing up window structure
use({ "windwp/nvim-autopairs", config=setup("autopairs") })         -- Auto-insert closing ) ] } etc after opening ( [ { etc.
use({ "unblevable/quick-scope", config=setup("quickscope") })       -- Mark jump points for f or F
use({ "chrisbra/Colorizer"})                                        -- Colorize W3 colors, X11 color names, and hex color codes. :ColorToggle
use({ "folke/todo-comments.nvim", config=setup("todo_comments") })  -- Highlights TODO, FIXME, WARNING, ... Requires :TSInstall comment   
use({ "vimwiki/vimwiki", config=setup("vimwiki") })                 -- To create a personal wiki (\ww to load the Index)
use({ "tpope/vim-repeat" })                                         -- Allow repeating all commands in a map, not just the last command of that map.
use({ "tpope/vim-fugitive" })                                       -- To interact with Git.
use({ "mhinz/vim-signify" })                                        -- Show file changes in gutter. Works with git, mercurial,...
use({ "sickill/vim-pasta" })                                        -- Paste (p/P) with indentation adjusted to surrounding code 
use({ "wellle/targets.vim" })                                       -- More text objects, e.g. ia to select a single argument of a function
use({ "kana/vim-textobj-user" })                                    -- Allows to define your own text objects. Prerequisite for vim-textobj-python.
use({ "bps/vim-textobj-python" })                                   -- Text objects af/if and ac/ic for Python functions and classes
use({ "ahmedkhalf/project.nvim", config=setup("project") })         -- Project management, e.g. autojump to base folder of project
use({ "numToStr/Comment.nvim", config=setup("comment") })           -- Easy (un)commenting of code
use({ "matze/vim-move", config=setup("vim_move") })                 -- Moving selected blocks of text
use({ "phaazon/hop.nvim", branch='v2', config=setup("hop") })       -- Easy navigation in the visible buffer. 
use({ "simrat39/symbols-outline.nvim",                              -- Shows a list of tags in a tagbar. Toggle with :SymbolsOutline
      cmd = { "SymbolsOutline" },
      config = setup("symbolsoutline") })
use({ "romgrk/barbar.nvim", config=setup("barbar"),                 -- To configure a buffer tab line
      requires = {'kyazdani42/nvim-web-devicons'} })
use({ "nvim-treesitter/nvim-treesitter",                            -- Advanced syntax tree parser
      config=setup("treesitter"),
      run = function()                                              -- The simpler run = ':TSUpdate' fails on the very first install
            require('nvim-treesitter.install').update({ with_sync = true }) 
            end, })
use({ "neovim/nvim-lspconfig", config=setup("lspconfig") })         -- Tools for Neovim's Language Server Protocol

use({ "hrsh7th/nvim-cmp", config=setup("nvim_cmp")})                -- The completion plugin
use({ "hrsh7th/cmp-buffer" })                                       -- Buffer completions
use({ "hrsh7th/cmp-path" })                                         -- Path completions
use({ "saadparwaiz1/cmp_luasnip" })                                 -- Snippet completions
use({ "hrsh7th/cmp-nvim-lsp" })                                     -- 
use({ "hrsh7th/cmp-nvim-lua" })                                     -- 
use({ "hrsh7th/cmp-nvim-lsp-signature-help" })
use({ "L3MON4D3/LuaSnip" })                                         -- Snippet engine
use({ "rafamadriz/friendly-snippets" })                             -- Collection of snippets

use({ "hoob3rt/lualine.nvim", config=setup("lualine"),              -- To have a colorful status line
      requires = { "kyazdani42/nvim-web-devicons", opt=true } }) 
use({ "SmiteshP/nvim-navic", config=setup("navic"),                 -- Provides code context to put in our lualine
      requires = "neovim/nvim-lspconfig" })

use({ "nvim-telescope/telescope.nvim", config=setup("telescope") }) -- Fuzzy finder, supported by many plugins
use({ "junegunn/fzf" })                                             -- Fuzzy finder - the machinery 
use({ "junegunn/fzf.vim", config=setup("fzf_vim") })                -- Vim interface to fzf (currently faster than Telescope)
use({ "sudormrfbin/cheatsheet.nvim", config=setup("cheatsheet") })  -- Display a cheatsheet helping to remember the keybindings: \?
use({ "lervag/vimtex", config=setup("vimtex") })                    -- LaTeX: \ll to start compiling. \lc to clear auxilliary files.
use({ "ludovicchabant/vim-gutentags", config=setup("gutentags") })  -- Manages ctags files
use({ "folke/trouble.nvim", config=setup("trouble") })              -- Pretty list of diagnostics, references, quickfixes
use({ "akinsho/toggleterm.nvim", config=setup("toggleterm") })      -- Easily toggle a terminals
use({ "nvim-neo-tree/neo-tree.nvim", config=setup("neotree"),       -- File system browser
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
      } })

end)


