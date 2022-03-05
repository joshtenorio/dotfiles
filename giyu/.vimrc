set encoding=UTF-8
" set autoindent
set tabstop=4 shiftwidth=4 expandtab
set number
set cursorline
set showmode
let mapleader = "-"

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'

let g:lightline = {'colorscheme': 'tokyonight'}
" this has to be the last plugin loaded
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
             \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

 nnoremap <leader>nt :NERDTreeToggle<CR>

" spell check
set spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

colo seoul256

set laststatus=2
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ }
