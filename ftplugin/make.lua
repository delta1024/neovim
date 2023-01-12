local line_count = vim.api.nvim_buf_line_count(0)
local lines = vim.api.nvim_buf_get_lines(0, 0, 1, false)
local lcontent = next(lines)

if line_count == 1 and lcontent == 1 or lcontent == nil then
    print("Preform auto insert? y/n? ")
    local opt = string.char(vim.fn.getchar())
    if opt ~= 'y' then
        return
    end

    local cc = vim.fn.input("CC = ")
    if cc == "" then
        cc = "gcc"
    end

    local cflags = vim.fn.input("CFLAGS = ")
    if cflags == "" then
        cflags = "-Wall"
    end
    local bin = vim.fn.input("BIN = ")

    lines = {
        "CC     = " .. cc,
        "CFLAGS = " .. cflags,
        "",
    }

    vim.api.nvim_buf_set_lines(0, -2, -1, false, lines)

    if bin ~= "" then
        lines = {
            "BIN    = " .. bin,
            "",
            "${BIN}: main.c",
            "\t${CC} ${CFLAGS} $^ -o $@",
        }

        vim.api.nvim_buf_set_lines(0, -2, -1, false, lines)
    end
end
