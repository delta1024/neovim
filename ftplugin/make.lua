local line_count = vim.api.nvim_buf_line_count(0)
local lines = vim.api.nvim_buf_get_lines(0, 0, 1, false) 
local lcontent = next(lines)

if line_count == 1 and lcontent == 1  then

    print("Preform auto insert? y/n? ")
    local opt = string.char(vim.fn.getchar())
    if opt  ~=  'y' then
        return
    end

    local cc = vim.fn.input("CC = ")
    if cc == "" then
        cc = "gcc"
    end
    cc = "CC="..cc

    local cflags = vim.fn.input("CFLAGS = ")
    if cflags == "" then
        cflags = "-Wall"
    end
    cflags = "CFLAGS="..cflags

    local bin = vim.fn.input("BIN = ")

    if bin ~= "" then
        bin = "BIN="..bin
    end

    vim.api.nvim_set_current_line(cc)
    vim.cmd("normal o")
    vim.api.nvim_set_current_line(cflags)
    vim.cmd("normal o")

    if bin ~= "" then
        vim.api.nvim_set_current_line(bin)
        vim.cmd("normal o")
        vim.cmd("normal o")
        vim.api.nvim_set_current_line("${BIN}: main.c")
        vim.cmd("normal o")
        vim.api.nvim_set_current_line("\t${CC} ${CFLAGS} $^ -o $@")
    end

end
