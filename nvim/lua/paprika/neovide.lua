local vim = vim

if vim.g.neovide then
   vim.o.guifont = "JetBrainsMono Nerd Font:h12"

   vim.g.neovide_padding_top = 5
   vim.g.neovide_padding_bottom = 5
   vim.g.neovide_padding_right = 5
   vim.g.neovide_padding_left = 5

   vim.g.neovide_transparency = 0.8

   vim.g.neovide_cursor_animation_length = 0.05
   vim.cmd("colorscheme kanagawa-dragon")
end
