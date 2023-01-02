call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'sbdchd/neoformat'

Plug 'SirVer/ultisnips'
" Currently, es6 version of snippets is available in es6 branch only
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'honza/vim-snippets' "optional

Plug 'rmagatti/goto-preview'
Plug 'windwp/nvim-autopairs'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'rafamadriz/friendly-snippets'

Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
call plug#end()

"------启动时配置
colorscheme slate
set number
syntax on
set autoindent
set smartindent
set encoding=utf-8 
setlocal iskeyword+=-
nmap <leader>e :CocCommand explorer e:\前端学习文件夹<CR>

let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:neoformat_try_node_exe = 1
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <Ctrl-F> to format documents with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <C-F> :Prettier<CR>	

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
