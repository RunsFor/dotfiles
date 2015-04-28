execute pathogen#infect()

" Enable per-directory vimrc files
set exrc

" https://github.com/vim-ruby/vim-ruby/wiki/VimRubySupport
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set background=light
colorscheme solarized

" Bind hotkey to CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*tmp/*,*.git/*,.*,*log/*,*client/node_modules/*,*client/build/*,*client/vendor/*,*/server/coverage/*

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
let g:rspec_command = "!zeus rspec --color {spec}"

" Fix delete key problem
" http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2

"Tagbar
nmap <F8> :TagbarToggle<CR>

" Minimal width of the current window
let &winwidth = 100

" Emmet vim settings
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-w>'

" Ruby Eval mappings
map <Leader>e :RubyEval<CR>

" Config for irb-config
" Screen settings
let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellInitialFocus = 'shell'
let g:ScreenShellQuitOnVimExit = 0
map <F6> :ScreenShellVertical<CR>
command -nargs=? -complete=shellcmd W  :w | :call ScreenShellSend("load '".@%."';")
map <Leader>r :w<CR> :call ScreenShellSend("rspec ".@% . ':' . line('.'))<CR>
map <Leader>e :w<CR> :call ScreenShellSend("cucumber --format=pretty ".@% . ':' . line('.'))<CR>
map <Leader>b :w<CR> :call ScreenShellSend("break ".@% . ':' . line('.'))<CR>
