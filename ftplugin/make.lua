local api = vim.api
local fn = vim.fn

if api.nvim_buf_line_count(0) == 1 and fn.getline(1) == "" then
    print("Preform auto insert? y/n? ")
    local opt = string.char(fn.getchar())
    if opt ~= 'y' then
        return
    end

    local cc = fn.input("CC = ")
    if cc == "" then
        cc = "gcc"
    end

    local cflags = fn.input("CFLAGS = ")
    local bin = fn.input("BIN = ")

    local lines = {
        "CC     = " .. cc,
        "CFLAGS = -Wall " .. cflags,
        "",
    }

    api.nvim_buf_set_lines(0, -2, -1, false, lines)

    if bin ~= "" then
        lines = {
            "BIN    = " .. bin,
            "",
            "${BIN}: main.c",
            "\t${CC} ${CFLAGS} $^ -o $@",
        }

        api.nvim_buf_set_lines(0, -2, -1, false, lines)
    end
end
