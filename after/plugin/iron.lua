local iron = require("iron.core")

iron.setup {
    config = {
        should_map_plug = false,
        scratch_repl = true,
        highlight_last = false,
        repl_open_cmd = require('iron.view').split.vertical.botright(70),
        repl_definition = {
            weirdFt = {
                command = {"zsh"}
            },
            sh = {
                command = {"zsh"}
            },
            python = require("iron.fts.python").ipython,
            octave = {
                command = {"octave"}
            }
        }
    },
    keymaps = {
        send_motion = "<space>sc",
        visual_send = "<space>sc",
        send_file = "<space>sf",
        send_line = "<space>sl",
        send_until_cursor = "<space>su",
        send_mark = "<space>sm",
        mark_motion = "<space>mc",
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        cr = "<space>s<cr>",
        interrupt = "<space>s<space>",
        exit = "<space>sq",
        clear = "<space>cl",
    },
    highlight = {
        italic = true
    },
    ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

vim.keymap.set('n', '<space>ri', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')

