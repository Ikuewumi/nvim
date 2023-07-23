require('cmd-palette').setup({
    {
        label = "Find Files",
        callback = function()
            require("telescope.builtin").find_files()
        end
    },

    {
        label = "Live Grep",
        callback = function()
            require("telescope.builtin").live_grep()
        end
    },

    {
        label = "Toggle Float Terminal",
        callback = function()
            require("nvterm.terminal").toggle('float')
        end
    },



    {
        label = "Explorer",
        cmd = "NvimTreeToggle"

    }
})
