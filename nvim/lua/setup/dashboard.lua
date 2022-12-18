
local db = require('dashboard')

local lazygit_cmd = ":FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit"

local header = {
    '',
    ' █    ██  ███▄ ▄███▓ ▄▄▄▄    ██▀███   ▄▄▄          ██▒   █▓ ██▓ ███▄ ▄███▓',
    ' ██  ▓██▒▓██▒▀█▀ ██▒▓█████▄ ▓██ ▒ ██▒▒████▄       ▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
    '▓██  ▒██░▓██    ▓██░▒██▒ ▄██▓██ ░▄█ ▒▒██  ▀█▄      ▓██  █▒░▒██▒▓██    ▓██░',
    '▓▓█  ░██░▒██    ▒██ ▒██░█▀  ▒██▀▀█▄  ░██▄▄▄▄██      ▒██ █░░░██░▒██    ▒██ ',
    '▒▒█████▓ ▒██▒   ░██▒░▓█  ▀█▓░██▓ ▒██▒ ▓█   ▓██▒      ▒▀█░  ░██░▒██▒   ░██▒',
    '░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░▒▓███▀▒░ ▒▓ ░▒▓░ ▒▒   ▓▒█░      ░ ▐░  ░▓  ░ ▒░   ░  ░',
    '░░▒░ ░ ░ ░  ░      ░▒░▒   ░   ░▒ ░ ▒░  ▒   ▒▒ ░      ░ ░░   ▒ ░░  ░      ░',
    ' ░░░ ░ ░ ░      ░    ░    ░   ░░   ░   ░   ▒           ░░   ▒ ░░      ░   ',
    '   ░            ░    ░         ░           ░  ░         ░   ░         ░   ',
    '                          ░                            ░                  ',
    '',
}

db.custom_header = header
db.custom_center = {
  {
    icon = "  ",
    desc = "Find File                    ",
    shortcut = "SPC pf",
  },
  {
    icon = "  ",
    desc = "New File                     ",
    shortcut = "SPC n ",
  },
  {
    icon = "  ",
    desc = "Recent Files                 ",
    shortcut = "SPC fh",
  },
  {
    icon = "  ",
    desc = "LazyGit                      ",
    shortcut = "SPC gg",
  },
  {
    icon = "  ",
    desc = "Open Terminal                ",
    shortcut = "Alt i",
  },
  {
    icon = "  ",
    desc = "Configuration                ",
    shortcut = "SPC ec"
  },
}

db.custom_footer = {
  [[]],
  [[]],
  'God is in his heaven, All is right with the world!'
}
