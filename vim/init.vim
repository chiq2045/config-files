call plug#begin('~/.local/share/nvim/plugged')
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Utilities
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'

call plug#end()

""" coc.nvim (((
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
" set signcolumn=yes

" coc global extensions
" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint', 
"   \ 'coc-prettier', 
"   \ 'coc-json', 
"   \ 'coc-stylelint',
"   \ 'coc-jest',
"   \ ]

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-pairs',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-json',
      \ 'coc-jest',
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-hihighlight'
      \ ]
" " Using CocList
" " Show all diagnostics
" nnoremap <silent> <space>a  :<C-u><CocList diagnosticscr<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u><CocList extensionscr<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u><CocList commandscr<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u><CocList outlinecr<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set statusline^=%{coc#status()}
""" )))

""" NERDTree (((
" open/close nerdtree
map <C-n> :NERDTreeToggle<CR>
""" )))

""" vim-colorschemes (((
" colorscheme gruvbox
" colorscheme wombat
colorscheme jellybeans
""" )))

" Utilities
syntax on
set number
set relativenumber
set ts=2
set sts=2
set sw=2
autocmd Filetype html setlocal ts=4 sts=0 sw=4
autocmd Filetype js setlocal ts=2 sts=2 sw=2
autocmd Filetype cshtml setlocal ts=4 sts=0 sw=4
autocmd Filetype csproj setlocal ts=4 sts=0 sw=4
autocmd Filetype cs setlocal ts=4 sts=0 sw=4
set expandtab

