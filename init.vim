call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tomasr/molokai'
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
call plug#end()

"------启动时配置
set number
colorscheme molokai
syntax on
set autoindent
set smartindent
set encoding=utf-8 
autocmd VimEnter * NERDTree e:\前端学习文件夹
let NERDTreeShowHidden=1

let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
