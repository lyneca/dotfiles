if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')

    " Dein UI
    call dein#add('wsdjeg/dein-ui.vim')
   
    " Languages
    call dein#add('cespare/vim-toml')
    call dein#add('rust-lang/rust.vim')
    call dein#add('JulesWang/css.vim')
    call dein#add('sophacles/vim-processing')
    call dein#add('pangloss/vim-javascript')
    call dein#add('vim-scripts/indentpython.vim')
    call dein#add('vim-scripts/java_apidoc.vim')
    call dein#add('PotatoesMaster/i3-vim-syntax')

    " Appearance
    call dein#add('lyneca/wal.vim')
    call dein#add('itchyny/lightline.vim')
    call dein#add('junegunn/goyo.vim')
    call dein#add('yggdroot/indentline')

    " External Extensions
    call dein#add('tpope/vim-fugitive')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('ervandew/supertab')
    call dein#add('ctrlpvim/ctrlp.vim')

    " Linting
    call dein#add('w0rp/ale')
    call dein#add('maximbaz/lightline-ale')

    " Helpers
    call dein#add('tpope/vim-surround')
    call dein#add('mattn/emmet-vim')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('godlygeek/tabular')

    call dein#add('plasticboy/vim-markdown')

    " Useless shit
    call dein#add('dixonary/vimty')
    
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

set autochdir
set autoread
set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set fillchars=vert:┃,fold:-
set foldlevel=99
set foldmethod=indent
set guifont=InputMono:h10
set laststatus=2
set mouse=a
set noeb novb t_vb=
set nowrap
set number
set relativenumber
set sessionoptions=blank,winsize,tabpages,resize
set shiftwidth=4
set softtabstop=0
set tabstop=4
set updatetime=750

" Plugin options

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
let g:lightline#ale#indicator_checking = ""
let g:haskellmode_completion_ghc = -1
let g:ale_completion_enabled = 0
let g:ale_linters = {'python': ['pylint'], 'java': ['javac']}
let g:ale_python_pylint_options = '--extension-pkg-whitelist=pygame'
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

nnoremap <space> za
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

function! OpenSourceFile()
    let a:name = expand('%:r')
    if filereadable(a:name . '.c')
        exec 'tab drop' a:name . '.c'
    elseif filereadable(a:name . '.cpp')
        exec 'tab drop' a:name . '.cpp'
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
command! -nargs=1 C execute "tabnew <args>.c | vnew <args>.h | wincmd r | wincmd h"
command! RC execute "tabnew ~/.config/nvim/init.vim"

" Highlights

hi htmlH1 ctermfg=6
hi NonText ctermbg=none guibg=NONE

" Autocommands

augroup pythonstuff
    au!
    au BufNewFile,BufRead *.py
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set textwidth=79 |
        \ set expandtab |
        \ set fileformat=unix
    au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match SpellBad /\s\+$/
augroup END

augroup numbertoggle
  au!
  au BufEnter,WinEnter,FocusGained,InsertLeave * set relativenumber
  au BufLeave,WinLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

au FileType css set foldmethod=syntax
au FileType html set foldmethod=indent

au FileType rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<Enter>

augroup markdown
    au!
    au BufNewFile,BufRead *.md
                \ set spell spelllang=en_au |
                \ set textwidth=79 |
                \ set shiftwidth=2 |
                \ set tabstop=2 |
                \ set softtabstop=2
augroup END

au FileType rmd,markdown syn region mkdCodeFold
        \ start="```"
        \ end="```"
        \ fold contains=mkdCodeFold

au FileType rmd,markdown syn sync fromstart
au FileType rmd,markdown set foldmethod=syntax
au FileType rmd,markdown let g:indentLine_enabled=0

au FileType haskell setlocal omnifunc=necoghc#omnifunc
au FileType haskell setlocal expandtab

function! Astyle()
    silent execute '!astyle -n ' shellescape(expand('%'), 1) 
    edit
endfunction

au BufWritePost *.c,*.h,*.java,*.cpp,*.cc,*.pde call Astyle()

set conceallevel=0
