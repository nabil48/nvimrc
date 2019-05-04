" Coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_node_path = "/usr/bin/node"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
autocmd User CocLocationsChange CocList --normal -A location
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
autocmd CursorHold * silent call CocActionAsync('highlight')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""