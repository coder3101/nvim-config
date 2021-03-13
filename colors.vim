" Theme scheme

if has('termguicolors')
    set termguicolors
    let &t_8f = "\<ESC>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<ESC>[48;2;%lu;%lu;%lum"
endif

set background=dark
let g:gruvbox_material_background = 'hard'
let g:airline_theme = 'gruvbox_material'
colorscheme gruvbox-material
