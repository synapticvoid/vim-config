
" general config
call pathogen#infect()
call pathogen#helptags()

set t_Co=256
colorscheme vimbrant

" Clear filetype flags before changing runtimepath to force
" Vim to reload them
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
syntax on
filetype plugin indent on

let mapleader=","
set tabstop=4
set shiftwidth=4
set expandtab

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

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
nmap <Leader>e :NERDTreeToggle<CR>

" key mappings
nmap j gj
nmap k gk

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap <Leader>l :setlocal number!<CR>
nmap <Leader>o :set paste!<CR>
nmap <Leader>r :set relativenumber!<CR>
:imap jj <Esc>

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
nmap <Leader>q :nohlsearch<CR>

nmap <F7> :% !xmllint % --format --recover 2>/dev/null<CR> 

" -----------------------------------------------------------------------------
" language specifics
" -----------------------------------------------------------------------------

" javascript
let g:javascript_enable_domhtmlcss = 1

" python
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType python set autoindent
autocmd FileType python set smartindent
let python_highlight_all = 1
