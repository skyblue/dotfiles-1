syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab                           "spaces instead of tabs
set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set number relativenumber
set nu rnu

au Filetype html setl ts=2 sw=2 et


"=============================
" Style
"=============================
set colorcolumn=80
set list
set listchars=tab:↦\ ,trail:·,space:·
match Whitespace /\s/
highlight Whitespace ctermfg=darkgrey
highlight ColorColumn ctermbg=0 guibg=darkgrey
highlight LineNr ctermfg=DarkGrey ctermbg=235


"=============================
" Keybinds
"=============================
let mapleader=" "
:imap ii <Esc>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>


" toggle hybrid line numbers when switching between insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


"=============================
" Plugins
"=============================
autocmd User GnuPG setl textwidth=72

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" air-line
let g:airline_theme='custom'

let g:airline_powerline_fonts = 1

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

