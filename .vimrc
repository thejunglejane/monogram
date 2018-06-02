execute pathogen#infect()

syntax enable                                           " enable syntax highlighting
filetype plugin indent on                               " set filetype option

let mapleader = "\<Space>"
inoremap jk <esc>

" Colors {{{
colorscheme solarized
set background=dark
" }}}

" Spaces & Tabs {{{
set tabstop=4                                           " number of visual spaces per tab
set softtabstop=4                                       " number of spaces in tab when editing
set shiftwidth=4                                        " number of spaces in tab when indenting with '>' or '<'
set expandtab                                           " tabs are spaces
set autoindent                                          " copy indentation from previous line
" }}}

" UI Layout {{{
set number                                              " show line numbers
set showcmd                                             " show command in bottom bar
set cursorline                                          " highlight cursorline
set wildmenu                                            " turn on visual autocomplete for command menu
" }}}

" Search {{{
set incsearch                                           " search as characters are entered
set ignorecase                                          " ignore case in search
set hlsearch                                            " highlight search results
" tap space-\ to turn off search highlight
nnoremap <silent> <leader>\ :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable                                          " enable folding
set foldmethod=indent                                   " fold based on indent level
" }}}

" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd FileType python setlocal colorcolumn=72,80  " add docstring and line length rulers
augroup END
" }}}

" Lightline {{{
set laststatus=2                                        " always display the status line
set noshowmode                                          " hide redundant -- INSERT -- status

let g:lightline = {'colorscheme': 'wombat'}
" }}}

" NERDCommenter {{{
let g:NERDSpaceDelims = 1                               " add spaces after comment delimiters by default
let g:NERDDefaultAlignt = 'left'                        " align line-wise comment delimiters flush left
let g:NERDTrimTrailingWhitespace = 1                    " trim trailing whitespace when uncommenting lines
" }}}

set modelines=1                                         " only use fold settings for this file
" vim:foldmethod=marker:foldlevel=0
