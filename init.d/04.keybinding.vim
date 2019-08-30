"" Vim Keybindings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Leader {{{
let mapleader=','
" }}}

"" Disable arrow {{{
no   <left> <Nop>
no   <right> <Nop>
no   <up> <Nop>
no   <down> <Nop>
no   <C-left> <Nop>
no   <C-right> <Nop>
no   <C-up> <Nop>
no   <C-down> <Nop>
no   <C-z> <Nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" }}}

"" For move to each window {{{
noremap <C-h> <C-w><C-h>
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>
" }}}

"" Arrow keys resize windows {{{
noremap <Left> :vertical resize +5<CR>
noremap <Up> :resize +5<CR>
noremap <Right> :vertical resize -5<CR>
noremap <Down> :resize -5<CR>
" }}}

"" Buffers {{{
noremap <A-l> :bn<cr>
noremap <A-h> :bp<cr>
noremap <A-L> :bl<cr>
noremap <A-H> :bf<cr>
noremap <leader>q :bp<cr>:bd #<cr>
noremap <leader>qq :bufdo bd<cr>
noremap <leader>qa :bufdo bd!<cr>
" }}}

"" Tab management
" nmap <A-H> :tabNext<cr>
" nmap <A-L> :tabnext<cr>
" nmap <A-N> :tabnew<cr>
" nmap <A-Q> :tabclose<cr>

"" Line bubbling {{{
nmap <A-j> ]e
nmap <A-k> [e
" }}}

"" Split {{{
nmap <C-A-k> <C-w>t<C-w>K
nmap <C-A-h> <C-w>t<C-w>H
" }}}

"" Terminal-mode {{{
tnoremap <Esc> <C-\><C-n>
" }}}

"" NERDTree {{{
noremap <F2> :NERDTreeToggle<CR>
noremap <C-\> :NERDTreeToggle<CR>
noremap <F3> :lcd %:p:h<CR>:NERDTreeCWD<CR>
" }}}

"" Git fugitif {{{
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
" }}}

"" Commentary {{{
noremap <Leader>/ :Commentary<CR>
" }}}

"" Autoformat {{{
nmap <Leader>f :Autoformat<CR>
nmap <Leader>F <Plug>(coc-format)
vmap <Leader>F <Plug>(coc-format-selected)
" }}}

"" Coc {{{
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> K :call <SID>show_documentation()<CR>

imap <A-Tab> <Plug>(coc-snippets-expand)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <leader>ac  <Plug>(coc-codeaction)
" }}}

"" Indent guides {{{
nmap <silent> <Leader>ig :IndentGuidesToggle<CR>
" }}}

"" color picker {{{
let g:vcoolor_map        = '<Leader>c'
let g:vcool_ins_rgb_map  = '<Leader>cr'
let g:vcool_ins_hsl_map  = '<Leader>ch'
let g:vcool_ins_rgba_map = '<Leader>cR'
" }}}

"" Tagbar {{{
noremap <Leader>tt :TagbarToggle<CR>
" }}}

"" File header {{{
noremap <leader>h :AddHeader<cr>
" }}}

"" FZF {{{
nmap <leader><space> :History<cr>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-w> <plug>(fzf-complete-word)
imap <c-x><c-p> <plug>(fzf-complete-path)
imap <c-x><c-f> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
" }}}

"" EasyAlign {{{
vmap <leader>a :EasyAlign<cr>
nmap <leader>a :EasyAlign<cr>
" }}}

"" Translate-shell {{{
inoremap <silent> <leader>t <ESC>:Trans<CR>
nnoremap <silent> <leader>t :Trans<CR>
vnoremap <silent> <leader>t :Trans<CR>
nnoremap <silent> <leader>td :TransSelectDirection<CR>
vnoremap <silent> <leader>td :TransSelectDirection<CR>
" }}}
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

