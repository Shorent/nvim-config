local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

function header()
    dashboard.section.header.val = {
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "   .--.    .                  .        .       .          ",
        "  :        |                  |         \\     /o          ",
        "  |    .-. | .-. .--.--. .-.  |.-.   .--.\\   / .  .--.--. ",
        "  :   (   )|(.-' |  |  |(   ) |-.'   |  | \\ /  |  |  |  | ",
        "   `--'`-' `-`--''  '  `-`-'`-'  `-  '  `- ' -' `-'  '  `-",
        "",
        ",---,---,---,---,---,---,---,---,---,---,---,---,---,-------,",
        "| ~ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | - | = | <-    |",
        "|---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|",
        "| ->| | Q | W | f | P | G | J | L | U | P | ; | [ | ] |  \\  |",
        "|-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|",
        "| Caps | A | R | S | T | D | H | N | E | I | O | , |  Enter |",
        "|------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|",
        "| Shift  | Z | X | C | V | B | K | M | , | . | / |  Shift   |",
        "|------,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|",
        "| ctrl |  | alt |                          | alt  |  | ctrl |",
        "'------'  '-----'--------------------------'------'  '------'",
    }

end

function buttons()
    dashboard.section.buttons.val = {
        buttonhl("f", "    Find Files", ": Telescope find_files <CR>"),
        buttonhl("p", "    Find Project", ": Telescope projects <CR>"),
        buttonhl("t", "    Find Text", ":Telescope live_grep <CR>"),
        buttonhl("q", "    Exit", ":q <CR>"),
    }
end

function footer()
    local f = {
        " Plugins (todo)",
        " v"
        .. vim.version().major .. "."
        .. vim.version().minor .. "."
        .. vim.version().patch,
        "Matthew Sherohman (shorent) 2023"
    }
    dashboard.section.footer.val = table.concat(f, " ~ ")
    .. "\n"
    .. table.concat(require("alpha.fortune")()," \n")
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
    .. " \n"
end

function buttonhl(shortcut, text, command)
    local button = dashboard.button(shortcut, text, command)
    button.opts.hl = "Label"
    button.opts.hl_shortcut = "Keyword"
    return button
end

header()
buttons()
footer()

dashboard.section.header.opts.hl = "Error"
dashboard.section.footer.opts.hl = "Comment"

alpha.setup(dashboard.opts)

