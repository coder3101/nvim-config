" Theme scheme

let g:gruvbox_contrast_dark = 'hard'
if(exists('+termguicolors'))
	let &t_8f = "\<ESC>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<ESC>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selections = '0'
set termguicolors
colorscheme gruvbox
set background=dark
