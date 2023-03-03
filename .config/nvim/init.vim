"
" $HOME/.config/nvim/init.vim

autocmd FileType python map <buffer> <C-r> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python :ALEDisable
autocmd FileType c set foldmethod=indent

set nu rnu
set termguicolors
call plug#begin('~/.config/nvim/plugged')
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'dense-analysis/ale'
call plug#end()
set guicursor=
let g:rainbow_active = 1
let g:ale_lint_on_insert_leave = 1
lua require'colorizer'.setup()
