return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local mode = {
            "mode",
            fmt = function(str)
                return "-- " .. str .. " --"
            end,
        }

        local branch = {
            "branch",
            icon = "",
        }

        local filename = {
            "filename",
            path = 1,
        }

        local diagnostics = {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn" },
            symbols = { error = "E:", warn = "W:" },
            colored = true,
            update_in_insert = false,
            always_visible = true,
            cond = function()
                return vim.bo.filetype ~= "markdown"
            end,
        }

        local file_info = {
            function()
                local encoding = vim.o.fileencoding
                if encoding == "" then
                    return vim.bo.fileformat .. " | " .. vim.bo.filetype
                else
                    return encoding .. " | " .. vim.bo.fileformat .. " | " .. vim.bo.filetype
                end
            end,
        }

        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = "",
                section_separators = "",
            },
            sections = {
                lualine_a = { mode },
                lualine_b = { branch },
                lualine_c = { diagnostics, filename },
                lualine_x = { file_info },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
        })
    end,
}
