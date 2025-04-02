require("copilot").setup({
    suggestion = {
        auto_trigger = true,
        enabled = true,
        keymap = {
            accept = "<C-J>",
            dismiss = "<C-x>"
        }
    },
    copilot_model = "claude-3.7-sonnet"
})
