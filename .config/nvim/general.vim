" colorscheme
syntax enable
set termguicolors
packadd! dracula
colorscheme dracula

" spaces and tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" editor options
scriptencoding utf-8
set autoindent
set cursorline
set encoding=utf8
set laststatus=2
set linebreak
set listchars=eol:¬,trail:•,extends:❯,precedes:❮,space:·
set list
set nobackup
set noswapfile
set nowritebackup
set number
set ruler
set smartindent
set splitbelow
set splitright
set wildmenu
set wrap

" mapping
" buffer navigation HJKL
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" FZF keybinds
nnoremap <C-B> :Buffers<CR>
nnoremap <C-F> :Ag<CR>
nnoremap <C-P> :Files<CR>
nnoremap <C-T> :Tags<CR>

" remove highlighted text
nnoremap <silent><esc> :noh<return><esc>

" plugins
" FZF
let g:fzf_layout = {'down':'40%'}

" trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e

" lightline
let g:lightline = {
  \ 'colorscheme': 'dracula',
  \ }
