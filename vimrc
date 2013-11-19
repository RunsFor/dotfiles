execute pathogen#infect()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

" Bind hotkey to CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <C-o> :NERDTreeToggle<CR>

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Inc_Winwidth = 0
map <C-l> :TlistToggle<CR>

