"
" $HOME/.config/nvim/init.vim

autocmd FileType python map <buffer> <C-r> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

set nu rnu
set termguicolors
call plug#begin('~/.config/nvim/plugged')
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'ap/vim-css-color'
Plug 'morhetz/gruvbox'
call plug#end()
set guicursor=
