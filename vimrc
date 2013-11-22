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

" Spaces instead Tabs
:set expandtab
:set tabstop=2
:set shiftwidth=2

" More natural splits opening
set splitbelow
set splitright

" Easier way to create vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove timeouts on escape key
set timeoutlen=1000 ttimeoutlen=0
