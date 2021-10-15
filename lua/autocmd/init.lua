local api = vim.api

-- This function is taken from https://github.com/norcalli/nvim_utils
function nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end

local autocmds = {
  highlight_yank = {
    {'TextYankPost', '*', 'lua vim.highlight.on_yank {on_visual = false}'};
  };
  clang_ts = {
    {'FileType', 'typescript', 'ClangFormatAutoEnable'};
  };
}

nvim_create_augroups(autocmds)
