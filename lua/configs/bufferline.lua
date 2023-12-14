require("bufferline").setup ({
    options = {
        mode = "buffer",
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
        }
    },
})

