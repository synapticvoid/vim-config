
" general config
call pathogen#infect()
call pathogen#helptags()

colorscheme 256-jungle

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

" auto strip trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
 endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" powerline stuff
set laststatus=2

" Ctrl-P stuff
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" plugins key mapping
nmap <F8> :TagbarToggle<CR>
nmap ; :CtrlPBuffer<CR>
nmap \e :NERDTreeToggle<CR>

" key mappings
nmap j gj
nmap k gk

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

" search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

