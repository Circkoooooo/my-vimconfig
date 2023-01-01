call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tomasr/molokai'
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier'
call plug#end()

"------启动时配置
set number
colorscheme molokai
syntax on
set encoding=utf-8 
autocmd VimEnter * NERDTree e:\
let NERDTreeShowHidden=1

let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
