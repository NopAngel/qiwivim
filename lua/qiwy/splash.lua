local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
vim.cmd([[colorscheme gruvbox]])


dashboard.section.header.val = {
  " ██████╗ ██╗██╗    ██╗██╗   ██╗",
  "██╔═══██╗██║██║    ██║╚██╗ ██╔╝",
  "██║   ██║██║██║ █╗ ██║ ╚████╔╝ ",
  "██║   ██║██║██║███╗██║  ╚██╔╝  ",
  "╚██████╔╝██║╚███╔███╔╝   ██║   ",
  " ╚═════╝ ╚═╝ ╚══╝╚══╝    ╚═╝   ",
  "     Welcome to QIWY!   ",
}

dashboard.section.buttons.val = {
  dashboard.button("e", "New file        ", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "Search file     ", ":Telescope find_files<CR>"),
  dashboard.button("q", "Exit            ", ":qa!<CR>"),
}

-- Footer
dashboard.section.footer.val = {
  "Made by ❤️  for you",
}

alpha.setup(dashboard.opts)
