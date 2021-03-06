syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab                           "spaces instead of tabs
set smartindent
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

" show and color tab and space characters
set list
set listchars=tab:↦\ ,trail:·,space:·
match Whitespace /\s/
hi Whitespace ctermfg=darkgrey

" split
hi VertSplit guibg=#6c6c6c ctermbg=242 guifg=NONE

" line numbers style
hi LineNr ctermfg=DarkGrey
"hi LineNr ctermfg=DarkGrey ctermbg=235
"hi CursorLineNr ctermbg=235

" show a column at 80 chars
"set colorcolumn=80
"hi ColorColumn ctermbg=0 guibg=darkgrey

" highlight the background of lines over 80 chars
hi OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"=============================
" Keybinds
"=============================
let mapleader=" "
:imap ii <Esc>

" change files
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>

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


Plug 'christoomey/vim-tmux-navigator'


Plug 'preservim/nerdtree' | 
    \ Plug 'Xuyuanp/nerdtree-git-plugin' |
    \ Plug 'ryanoasis/vim-devicons'
map <leader>n :NERDTreeToggle<CR>
autocmd vimenter * NERDTree                         " open a NERDTree automatically
autocmd vimenter * wincmd p                         " focus on file
autocmd StdinReadPre * let s:std_in=1               " open NERDTree automatically on a directory
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif   " close vim if the only window left open is a NERDTree 
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = ''               " to remove arrow symbol
let g:NERDTreeDirArrowCollapsible = ''              " to remove arrow symbol
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '    " Padding on the right of the icon
let NERDTreeMapOpenSplit="s"
let NERDTreeMapPreviewSplit="gs"
let NERDTreeMapOpenVSplit="v"
let NERDTreeMapPreviewVSplit="gv"
let NERDTreeMapActivateNode="l"


" autocomplete
Plug 'ycm-core/YouCompleteMe'
let g:ycm_collect_identifiers_from_tags_files = 1   " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1               " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1          " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1                  " Completion in comments
let g:ycm_complete_in_strings = 1                   " Completion in string


" Snippets engine
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
"let g:UltiSnipsExpandTrigger       = "<c-g>"
"let g:UltiSnipsJumpForwardTrigger  = "<c-g>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
"let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file


" python
"Plug 'davidhalter/jedi-vim'


Plug 'airblade/vim-gitgutter'
let g:gitgutter_sign_column_always = 1
highlight SignColumn ctermbg=NONE guibg=NONE


" style
Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='custom'


call plug#end()

