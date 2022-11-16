local neogit = require("neogit")

neogit.setup({
    signs = {
        section = { "▶", "☉" },     -- {Closed, Opened}
        item = { "▶", "☉" },
        hunk = { "▶", "☉" },
      },
    integrations = {
        diffview = true,  
    },
    sections = {
        untracked = {
          folded = false
        },
        unstaged = {
          folded = true
        },
        staged = {
          folded = true
        },
        stashes = {
          folded = true
        },
        unpulled = {
          folded = true
        },
        unmerged = {
          folded = true
        },
        recent = {
          folded = true
        },
    },
})
