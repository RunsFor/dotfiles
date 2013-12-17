execute pathogen#infect()

filetype plugin indent on

syntax on
set background=light
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
set timeoutlen=1000 ttimeoutlen=1

" Airline plugin not appears when onely one window open
set laststatus=2
let g:airline_powerline_fonts=1
set noshowmode

" Let vim load the right ruby version
" http://rvm.io/integration/vim
set shell=/bin/sh

" RSpec.vim mappings
map <Leader>t :w\|:call RunCurrentSpecFile()<CR>
map <Leader>s :w\|:call RunNearestSpec()<CR>
map <Leader>l :w\|:call RunLastSpec()<CR>
map <Leader>a :w\|:call RunAllSpecs()<CR>
let g:rspec_command = "!rspec --color {spec}"

