"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"
" Colorscheme settings
"

try
    set t_Co=256
    colorscheme itg_flat
catch
endtry

"
" My windown navigation
"
nnoremap <A-left> <C-w>h
nnoremap <A-right> <C-w>l
nnoremap <A-down> <C-w>j
nnoremap <A-up> <C-w>k


"Powerline add
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
