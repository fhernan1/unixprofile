set wrap
syntax enable
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nocompatible
set ttyfast
set number
set mouse=a
set cc=80
" set laststatus=2
" set statusline+=%F
set title
let &titleold=hostname()
let mapleader = ","
set ruler
set cursorline

" Solarized
if has("nvim")
    set background=dark
else
    set background=dark
endif

if has("terminfo")
  let &t_Co=256
  let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
  let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
else
  let &t_Co=256
  let &t_Sf="\<Esc>[3%dm"
  let &t_Sb="\<Esc>[4%dm"
endif


" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Save and execute current buffer
map <leader>! :w<CR>:!%:p<CR>

" Execute the visual selection in shell or Python
vnoremap <leader>k :w !ksh93<CR>
vnoremap <leader>p :w !python3<CR>

" Hide highlights
nnoremap <F3> :noh<CR>

" Search and replace word under cursor
nnoremap <leader>s :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
vnoremap * y/<C-R>"<CR>

" Scroll buffers with ctrl n/p
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Swap to alternatve buffer
:nnoremap <C-a> :b#<CR>

" Quick double ; to Esc
map! ;; <Esc>

" Comment/uncomment line
map <leader>c :s/^/#/<CR>:noh<CR>
map <leader>u :s/^#//<CR>:noh<CR>

" Add comment to remove test line
map <leader>t A #TODO remove<esc>

" List buffers, immediately switch
:nnoremap <leader>l :buffers<CR>:buffer<Space>

" Visual select word
nmap <space> viw
vmap <space> w

" Easy quit
nmap <leader>q :qa!<CR>

autocmd FileType python setlocal expandtab
