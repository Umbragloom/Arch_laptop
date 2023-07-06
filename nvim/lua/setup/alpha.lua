         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
            
[[ █    ██  ███▄ ▄███▓ ▄▄▄▄    ██▀███   ▄▄▄    ██▒   █▓ ██▓ ███▄ ▄███▓]],
[[ ██  ▓██▒▓██▒▀█▀ ██▒▓█████▄ ▓██ ▒ ██▒▒████▄ ▓██░   █▒▓██▒▓██▒▀█▀ ██▒]],
[[▓██  ▒██░▓██    ▓██░▒██▒ ▄██▓██ ░▄█ ▒▒██  ▀█▄▓██  █▒░▒██▒▓██    ▓██░]],
[[▓▓█  ░██░▒██    ▒██ ▒██░█▀  ▒██▀▀█▄  ░██▄▄▄▄██▒██ █░░░██░▒██    ▒██ ]],
[[▒▒█████▓ ▒██▒   ░██▒░▓█  ▀█▓░██▓ ▒██▒ ▓█   ▓██▒▒▀█░  ░██░▒██▒   ░██▒]],
[[░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░▒▓███▀▒░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▐░  ░▓  ░ ▒░   ░  ░]],
[[░░▒░ ░ ░ ░  ░      ░▒░▒   ░   ░▒ ░ ▒░  ▒   ▒▒ ░░ ░░   ▒ ░░  ░      ░]],
[[ ░░░ ░ ░ ░      ░    ░    ░   ░░   ░   ░   ▒     ░░   ▒ ░░      ░   ]],
[[   ░            ░    ░         ░           ░  ░   ░   ░         ░   ]],
[[                          ░                      ░                  ]],
         }
         dashboard.section.buttons.val = {
             dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
             dashboard.button("e", "  New file", "<cmd>ene <CR>"),
             dashboard.button("SPC f f", "  Telescope Find Files"),
             dashboard.button("SPC f r", "  Recently opened files"),
             dashboard.button("SPC f w", "  Live Grep"),
             dashboard.button("SPC f b", "  File Browser"),
             dashboard.button("SPC f r", "  Ranger"),
         }

         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune
         dashboard.config.opts.noautocmd = true
         vim.cmd[[autocmd User AlphaReady echo 'ready']]
         alpha.setup(dashboard.config)
