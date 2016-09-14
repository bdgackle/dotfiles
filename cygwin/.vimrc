"Misc preferances
:set tags=tags;
:set laststatus=2
:set expandtab
:set tabstop=4
:set sw=4
:set splitright
:set wildmode=longest,list,full
:set errorformat^=%-G%f:%l:\ warning:%m
:set ruler
syntax enable

" Search up for tags
:set tags+=./tags;/

" Solarized colorscheme
:set background=dark
colorscheme solarized

" Build and see errors
:set makeprg=clear\;\ make\ all
":set errorformat=%f:%l:%c:\ fatal\ error:\ %m,%-G%.%#

" Cscope results to quicklist
:set cscopequickfix=s-,c-,d-,i-,t-,e-

" Taglist
" filetype plugin on

" Maybe later -- stuff I want to experiment with
":let mapleader = ","
":set relativenumber

" Highlight trailing whitespace, from Greg's vimrc
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Auto search for cscope database; from vim tips wikia
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()
