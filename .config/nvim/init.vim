" set the runtime path to include Vundle and initialize
call plug#begin(stdpath('data') . '/plugged')

if exists('g:vscode')
    Plug 'tpope/vim-surround'
    call plug#end()            " required
    nnoremap <esc> :noh<return><esc>
    nmap <tab> >>
    vmap <tab> >gv
    nmap <S-tab> <<
    vmap <S-tab> <gv
else

" Languages
Plug 'cespare/vim-toml'
Plug 'hashivim/vim-terraform'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'JulesWang/css.vim'
Plug 'sophacles/vim-processing'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/java_apidoc.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'kovisoft/slimv'
Plug 'IN3D/vim-raml'
Plug 'SidOfc/mkdx'
Plug 'souffle-lang/souffle.vim'
Plug 'psf/black', { 'branch': 'stable' }

" Appearance
Plug 'lyneca/wal.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'yggdroot/indentline'

" External Extensions
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'

" Linting
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'

" Deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'

" Helpers
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'FooSoft/vim-argwrap'

call plug#end()            " required

let g:mkdx#settings   = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }


filetype plugin indent on
syntax enable

set autochdir
set autoread
set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set fillchars=vert:┃,fold:-
" set ambiwidth=double
set foldlevel=99
set foldmethod=indent
set guifont=InputMono:h10
set laststatus=2
set mouse=a
set noeb novb t_vb=
set nowrap
set linebreak
set number
set sessionoptions=blank,winsize,tabpages,resize
set shiftwidth=4
set softtabstop=0
set tabstop=4
set updatetime=750

" Plugin options

let g:deoplete#enable_at_startup = 1
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_java = 1
let g:NERDAltDelims_c = 1
let g:goyo_height = "98%"
let g:goyo_linenr = 1
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:indentLine_char='│'
let g:indentLine_color_term=235
let g:lightline = {  
  \ 'colorscheme': 'wal',
  \ 'active': {
  \     'right': [
  \         [ 'lineinfo' ],
  \         [ 'percent' ],
  \         [ 'fileformat', 'fileencoding', 'filetype' ],
  \     ],
  \     'left': [
  \         [ 'mode', 'paste' ],
  \         [ 'readonly', 'filename', 'modified' ],
  \         [
  \             'linter_checking',
  \             'linter_errors',
  \             'linter_warnings',
  \             'linter_ok'
  \         ],
  \     ],
  \ },
  \ 'component_expand': {
  \     'linter_checking': 'lightline#ale#checking',
  \     'linter_warnings': 'lightline#ale#warnings',
  \     'linter_errors': 'lightline#ale#errors',
  \     'linter_ok': 'lightline#ale#ok',
  \ },
  \ 'component_type': {
  \     'linter_checking': 'left',
  \     'linter_warnings': 'warning',
  \     'linter_errors': 'error',
  \     'linter_ok': 'left',
  \ }
  \ }

let g:ale_virtualenv_dir_names = []
let g:lightline#ale#indicator_checking = ""
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
let g:haskellmode_completion_ghc = -1
let g:ale_completion_enabled = 0
let g:ale_linters = {'python': ['pylint', 'mypy'], 'java': ['javac']}
let b:ale_linters = ['python', 'mypy']
let g:ale_python_pylint_options = '--extension-pkg-whitelist=pygame'
let g:ale_python_mypy_options = '--strict'
let g:vim_markdown_folding_disabled=0
let g:vim_markdown_conceal=0
let g:vim_markdown_math=1
let g:vim_markdown_new_list_item_indent=0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
let g:ctrlp_custom_ignore = {
	\   'dir' : '\.git$\|build$\|bower_components\|node_modules\|dist\|target' ,
	\ 	'file' : '\v\.(o)$'
	\ }


let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

" Remaps


nmap <space> <Plug>(mkdx-checkbox-prev-n)
nnoremap <esc> :noh<return><esc>

" Don't need these arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
" B A <Start>

nmap + :.!ruby -ne 'puts eval($_)'<Enter>
nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)
nmap <silent> <C-n> :put =strftime('%Y-%m-%d %H:%M:%S')<Enter>

nmap g :!mimeopen <CR><CR>

function! OpenSourceFile()
    let name = expand('%:r')
    if filereadable(name . '.c')
        exec 'tab drop' name . '.c'
    elseif filereadable(name . '.cpp')
        exec 'tab drop' name . '.cpp'
    endif
endfunction

nmap <silent> <C-h> :exec 'tab drop' expand('%:r') . '.h'<Enter>
nmap <silent> <C-s> :call OpenSourceFile()<Enter>

nmap <tab> >>
vmap <tab> >gv
nmap <S-tab> <<
vmap <S-tab> <gv

nmap ,0 :s/^#* \?//g<CR><esc>
nmap ,1 :s/^#* \?/# /g<CR><esc>
nmap ,2 :s/^#* \?/## /g<CR><esc>
nmap ,3 :s/^#* \?/### /g<CR><esc>
nmap ,4 :s/^#* \?/#### /g<CR><esc>
nmap ,5 :s/^#* \?/##### /g<CR><esc>

nmap ,q I><space>
nmap ,b I-<space>
nmap ,n I<space>1.<space>
nmap ,c I```<Enter><Enter>```<esc>2kA
nmap ,C I```<Enter><Enter>```<esc>2kA{}<esc>i
vmap ,l c[<C-r>"]()<esc>i
vmap ,L c(<C-r>")<esc>%i[]<esc>i

nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

nmap <leader>l a─<esc>
nmap <leader>k a│<esc>
nmap <leader>kl a┌<esc>
nmap <leader>lj a┐<esc>
nmap <leader>jl a└<esc>
nmap <leader>lk a┘<esc>
nmap <leader>jkl a├<esc>
nmap <leader>hjk a┤<esc>
nmap <leader>hjl a┬<esc>
nmap <leader>hkl a┴<esc>
nmap <leader>hjkl a┼<esc>

nmap <leader>w :set wrap!<CR>

nmap <leader>a :ArgWrap<CR>

function! ToggleAutoTab()
    if exists('b:autotab')
        let b:autotab = !b:autotab
    else
        let b:autotab = 1
    endif
endfunction

nmap <leader>t :Tabularize /\|<CR>
nmap <leader>r :call ToggleAutoTab()<CR>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists('b:autotab') && b:autotab == 1 && exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

colorscheme wal 

" Commands
command! Pdf execute "!pdf %"
command! BgPdf silent call jobstart('pdf '.expand('%'))
command! -nargs=1 C execute "tabnew <args>.c | vnew <args>.h | wincmd r | wincmd h"
command! RC execute "tabnew ~/.config/nvim/init.vim"

" Highlights

hi htmlH1 ctermfg=6
hi NonText ctermbg=none guibg=NONE
hi EndOfBuffer ctermfg=3
hi CocFloating ctermbg=0
hi Pmenu ctermbg=0
hi VertSplit ctermbg=NONE

" Autocommands

au BufRead,BufNewFile *.clisp set filetype=lisp

" au InsertLeave,BufWritePre *.py execute ':Black'
augroup pythonstuff
    au!
    au BufNewFile,BufRead *.py
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set expandtab |
        \ set fileformat=unix
    au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match SpellBad /\s\+$/
augroup END

" augroup numbertoggle
  " au!
  " au BufEnter,WinEnter,FocusGained,InsertLeave * set relativenumber
  " au BufLeave,WinLeave,FocusLost,InsertEnter * set norelativenumber
" augroup END

au FileType css set foldmethod=syntax
au FileType html set foldmethod=indent

au FileType rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<Enter>

augroup gitcommit
    au!
    au BufNewFile,BufRead gitcommit
                \setlocal spell spelllang=en_au
augroup END

function! ToggleCheckbox()
    let b:line=getline('.')
    if b:line =~ "^- [ ]"
        call setline('.', substitute(b:line, '^- [ ]', '- [x]'))
    elseif b:line =~ "^- [x]"
        call setline('.', substitute(b:line, '^- [x]', '- [ ]'))
    endif
endfunction

augroup markdown
    au!
    au BufNewFile,BufRead *.md
                \ setlocal spell spelllang=en_au |
                \ setlocal shiftwidth=2 |
                \ setlocal tabstop=2 |
                \ setlocal softtabstop=2 |
                \ setlocal wrap |
                \ setlocal showbreak=\ |
                \ call deoplete#custom#buffer_option('auto_complete', v:false)
augroup END

augroup raml
    au!
    au BufNewFile,BufRead *.raml
                \ setlocal shiftwidth=2 |
                \ setlocal tabstop=2 |
                \ setlocal softtabstop=2
augroup END

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

au FileType rmd,markdown syn region mkdCodeFold
        \ start="```"
        \ end="```"
        \ fold contains=mkdCodeFold

au FileType rmd,markdown syn sync fromstart
au FileType rmd,markdown set foldmethod=syntax
au FileType rmd,markdown let g:indentLine_enabled=0

au FileType haskell setlocal omnifunc=necoghc#omnifunc
au FileType haskell setlocal expandtab

function FormatState()
    if exists('b:autoformat') && b:autoformat == 1
        echo "Autoformat on"
    else
        echo "Autoformat off"
    endif
endfunction

au BufEnter *.c,*.h,*.java,*.cpp,*.cc,*.pde let b:autoformat = 1 |
            \ nmap <buffer> <leader>b <Cmd> let b:autoformat = !b:autoformat \| call FormatState()<return>

function! AutoPDF()
    if exists('b:autopdf') && b:autopdf == 1
        silent execute 'BgPdf'
    endif
endfunction

au FileType markdown.autopdf let b:autopdf = 1
au BufWritePost *.md call AutoPDF()

function! Astyle()
    if exists('b:autoformat') && b:autoformat == 1
        silent execute '!astyle -n ' shellescape(expand('%'), 1) 
        edit
    endif
endfunction

au BufWritePost *.c,*.h,*.java,*.cpp,*.cc,*.pde call Astyle()

set conceallevel=0
endif
