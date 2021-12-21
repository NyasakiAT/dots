"
" VIMPLUG
"
call plug#begin()
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'markonm/traces.vim'
	Plug 'ryanoasis/vim-devicons'
	"Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()


"
" VIM SETTINGS
"
set number
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif


"
" COC
"
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-prettier', 'coc-markdownlint', 'coc-discord', 'coc-omnisharp']


"
" NERDTREE
"
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> gt
nnoremap <C-h> gT

let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
