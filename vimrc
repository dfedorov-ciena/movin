"################ VIM configuration file ###################
" Copyright (C) 2019 by Ciena Corporation & Dmitri Fedorov
"###########################################################

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

let g:BASH_AuthorName = 'Dmitri Fedorov'
let g:BASH_Company = 'Ciena Corporation'

" general
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%110v.\+/

set nocompatible
set autoindent
set smartindent
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set textwidth=120
set number
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */

:nnoremap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
:nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
:noremap <F7> :make all

set background=dark
set exrc
set secure
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set title

:nnoremap <F5> :buffers<CR>:buffer<Space>

" C++
set t_Co=256
syntax on

" file types
filetype plugin indent on
au FileType tex setlocal spell spelllang=en_ca
" au FileType c,cpp setl foldenable foldmethod=syntax
augroup vimrc
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
    autocmd BufRead,BufNewFile *.hpp,*.cpp set filetype=cpp.doxygen
augroup END

" Python
let g:pymode_python = 'python3'
let g:pymode_options_max_line_length=120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1


" Terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
autocmd FileType terraform setlocal commentstring=#%s

