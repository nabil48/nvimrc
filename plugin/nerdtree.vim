if exists('g:plugs["nerdtree"]')
  autocmd StdinReadPre * let s:std_in = 1
  let g:NERDTreeDirArrowExpandable    = "\u00a0"
  let g:NERDTreeDirArrowCollapsible   = "\u00a0"
  let NERDTreeIgnore                  = [
        \ '.aux',
        \ '.fdb_latexmk',
        \ '.fls',
        \ '.lof',
        \ '.log',
        \ '.lot',
        \ '.out',
        \ '.synctex.gz',
        \ '.toc',
        \ '.xdv',
        \ '\.pyc$',
        \ '^__pycache__$',
        \ '^node_modules$',
        \ ]
  autocmd StdinReadPre * let s:std_in = 1

  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd FileType nerdtree setlocal signcolumn=no nocursorcolumn
endif