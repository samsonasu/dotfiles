set scrolloff=8
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf8
set mouse=n

call plug#begin()
  Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'wincent/terminus'
call plug#end()

" Space is the leader
let mapleader = "\<Space>"

" nvim builting config
nnoremap <Leader>b :buffers<CR>:buffer<Space>


" fzf search config
nnoremap <C-P> :GFiles<CR>

" NERDTree config
map <leader>t :NERDTreeToggle<CR>
" let NERDTreeQuitOnOpen=0
let NERDTreeMapOpenInTab='<Enter>'
let NERDTreeMapActivateNode='<Right>'

