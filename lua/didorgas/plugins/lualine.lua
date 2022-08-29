require('lualine').setup {
    options = {
        component_separators = { left = '|', right = '|'},
    },
    sections = {
        lualine_a = {},
        lualine_b = {
            {
                'filename',
                file_status = true,
                newfile_status = false,
                path = 1,
                shorting_target = 40,
                symbols = {
                    modified = '[+]',
                    readonly = '[-]',
                    unnamed = '[No Name]',
                    newfile = '[New]',
                }
            }
        },
        lualine_c = {},
        lualine_x = {'filetype', 'progress', 'location'},
        lualine_y = {},
        lualine_z = {}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
}
