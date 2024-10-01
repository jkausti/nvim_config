function SetColor(color, style)
    if not style then
    else
        vim.g.material_style = style
    end

    color = color or 'material'

    vim.cmd.colorscheme(color)
end

SetColor("gruvbox")
