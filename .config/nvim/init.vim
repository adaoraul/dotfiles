let g:ruby_host_prog = $HOME . '/.rbenv/versions/2.7.2/bin/ruby'

packadd minpac

call minpac#init({'dir': $HOME . '/.local/share/nvim/site'})
call minpac#add('k-takata/minpac', {'type': 'opt'})

" editor
call minpac#add('airblade/vim-gitgutter')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-obsession')

" look&feel
call minpac#add('dracula/vim', {'name': 'dracula'})
call minpac#add('itchyny/lightline.vim')
call minpac#add('vim-syntastic/syntastic')

runtime! general.vim
