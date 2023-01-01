call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'EdenEasz/nightfox.nvim'	
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
call plug#end()

"------启动时配置
set number
syntax on
set autoindent
set smartindent
set encoding=utf-8 
let NERDTreeShowHidden=1
nmap <leader>e :CocCommand explorer e:\前端学习文件夹<CR>

let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
