"" Vim-Plug
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'godlygeek/tabular'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'junegunn/vim-peekaboo'
" Plug 'mhinz/vim-startify' 
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'scrooloose/nerdtree'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'plasticboy/vim-markdown'
Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'itchyny/lightline.vim' 
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'majutsushi/tagbar'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'mnabila/vim-header'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'psliwka/vim-smoothie'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'voldikss/vim-translator'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

"" Initialize plugin system
call plug#end()
