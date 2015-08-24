"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set autoread

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch
"
" Colorscheme settings
"
try
    set t_Co=256
    colorscheme itg_flat
catch
endtry

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
map Up gk
map Down gj

"
" My windown navigation
"
nnoremap <A-left> <C-w>h
nnoremap <A-right> <C-w>l
nnoremap <A-down> <C-w>j
nnoremap <A-up> <C-w>k

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
"map <C-PageUp> mz:m+<cr>`z
"map <C-PageUp> mz:m-2<cr>`z
"map <C-PageUp> :m'>+<cr>`<my`>mzgv`yo`z
"map <C-PageUp> :m'<-2<cr>`>my`<mzgv`yo`z

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"Powerline add
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
