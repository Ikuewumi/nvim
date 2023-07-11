require('cmd-palette').setup({
    {
        label = "Live Grep",
        callback = function()
            require("telescope.builtin").live_grep()
        end
    },

    {
        label = "Find Files",
        callback = function()
            require("telescope.builtin").find_files()
        end
    },

    {
        label = "Explorer",
        cmd = "NvimTreeToggle"

    }
})
