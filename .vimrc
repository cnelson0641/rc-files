" Line numbers, colorscheme, syntax
set number
syntax on
colorscheme delek " nelc_delek?

" Tabbing
set shiftwidth=4
set smartindent
set tabstop=4
set expandtab

" Scroll half page w/ E and C
nnoremap e <C-u>
nnoremap c <C-d>

" Highlight in blue
hi Search cterm=NONE ctermfg=grey ctermbg=blue

" 10 line buffer at top and bottom
set scrolloff=10

" Shift-Enter inserts newline w/o edit
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Highlight all searchs and don't wrap back up
set hlsearch
set nowrapscan

" Case insensitive searching on lowercase
set ignorecase
set smartcase

" Comment indentation
inoremap # X<BS>#

" Hex editor mode
command Hex %!xxd

" Backspace fix
" set term=cons25
" set backspace=2

" Always have status bar
set laststatus=2
hi StatusLine ctermbg=black cterm=NONE

" Chop command (70 chars)
command Chop %s/\(.\{60\} \)/\1\r/g

" Whitespace error
match Error /\s\+$/
command White %s/\s\+$//e


" Swap files in one dir (not cwd)
set directory=
set directory=~/.vim/swapfiles//

" Language syntax
command Perl set syntax=perl
command Python set syntax=python
command Diff set syntax=diff
command Make set autoindent noexpandtab tabstop=4 shiftwidth=4
