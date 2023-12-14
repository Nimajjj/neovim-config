require("bufferline").setup ({
    options = {
        mode = "buffers",
        indicator = {
            style = 'underline',
        },
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "center",
                separator = true,
            }
        },
    },
})

