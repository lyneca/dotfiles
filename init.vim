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
Plug 'leafgarland/typescript-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/java_apidoc.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'kovisoft/slimv'
Plug 'IN3D/vim-raml'
Plug 'SidOfc/mkdx'
Plug 'souffle-lang/souffle.vim'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elzr/vim-json'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" Behaviour
Plug 'easymotion/vim-easymotion'

" Appearance
Plug 'lyneca/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'
Plug 'junegunn/goyo.vim'
"Plug 'yggdroot/indentline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'morhetz/gruvbox'
" Plug 'shinchu/lightline-gruvbox.vim'

" External Extensions
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'

" Helpers
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'FooSoft/vim-argwrap'
Plug 'machakann/vim-swap'

call plug#end()            " required

let g:mkdx#settings   = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }


filetype plugin indent on
syntax enable

" netrw config
let g:netrw_liststyle = 3
let g:netrw_banner = 0

nmap <C-o> :Texplore<CR>

" nmap <leader>\ :Vexplore<CR>

" Swapfile directory
set directory^=$HOME/.vim/swapfiles//

" Persistent undos
set undodir=~/.vim/undodir
set undofile

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

" GUI options
set guifont=Fira\ Code:h14
let g:neovide_cursor_animate_command_line = v:false
let g:neovide_cursor_vfx_mode = "pixiedust"
let g:neovide_cursor_smooth_blink = v:true
let g:neovide_cursor_animation_length = 0.06


" Plugin options

"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:deoplete#enable_at_startup = 1
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_java = 1
let g:NERDAltDelims_c = 1
let g:goyo_height = "98%"
let g:goyo_linenr = 1
let g:vim_json_syntax_conceal = 1
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#whitespace#enabled = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='⚡'

let g:indentLine_char='│'
let g:indentLine_color_term=235
" let g:lightline = {  
"   \ 'colorscheme': 'gruvbox',
"   \ 'active': {
"   \     'right': [
"   \         [ 'lineinfo' ],
"   \         [ 'percent' ],
"   \         [ 'fileformat', 'fileencoding', 'filetype' ],
"   \     ],
"   \     'left': [
"   \         [ 'mode', 'paste' ],
"   \         [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ]
"   \     ],
"   \ },
"   \ 'component_function': {
"   \   'cocstatus': 'coc#status',
"   \   'currentfunction': 'CocCurrentFunction'
"   \ },
"   \ }

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
" let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
" let s:palette.inactive.middle = s:palette.normal.middle
" let s:palette.tabline.middle = s:palette.normal.middle
let g:haskellmode_completion_ghc = -1
" let g:ale_completion_enabled = 0
" let g:ale_linters = {'python': ['pylint', 'mypy'], 'java': ['javac']}
" let b:ale_linters = ['python', 'mypy']
" let g:ale_python_pylint_options = '--extension-pkg-whitelist=pygame'
" let g:ale_python_mypy_options = '--strict'

let g:mkdp_auto_start = 1
let g:mkdp_markdown_css = 'C:\Users\atrag\bin\homesick.css'

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

let g:coc_status_error_sign = 'E '
let g:coc_status_warning_sign = 'W '

let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

call coc#config('python', {'pythonPath': $PYENV_VIRTUAL_ENV})

" LSP
unmap Y

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

nmap <silent> gd <Plug>(coc-definition)
try
    nmap <silent> <C-j> :call CocAction('diagnosticNext')<cr>
    nmap <silent> <C-k> :call CocAction('diagnosticPrevious')<cr>
endtry
nmap <silent> <leader>rn <Plug>(coc-rename)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" Remaps

nnoremap j gj
nnoremap k gk
" nnoremap 0 g0
" nnoremap $ g$
set scrolloff=5
set ignorecase smartcase
set incsearch hlsearch
nnoremap <space><space> <c-^>
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>
nmap S v<Plug>(coc-codeaction-selected)
nnoremap s "_d
nnoremap Q @@
nmap <space> za
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
nnoremap <c-z> <nop>

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

colorscheme gruvbox 

" Commands
command! Pdf execute "!pdf %"
command! BgPdf silent call jobstart('pdf '.expand('%'))
command! -nargs=1 C execute "tabnew <args>.c | vnew <args>.h | wincmd r | wincmd h"
command! RC execute "tabnew ~/AppData/Local/nvim/init.vim"

" Highlights

hi htmlH1 ctermfg=6
hi NonText ctermbg=none guibg=NONE
hi EndOfBuffer ctermfg=3
hi CocFloating ctermbg=0
hi Pmenu ctermbg=0
hi VertSplit ctermbg=NONE

" Autocommands

au BufRead,BufNewFile *.clisp set filetype=lisp
au BufRead,BufNewFile *.yaml,*.yml set shiftwidth=2 | set tabstop=4

set conceallevel=0
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
au FileType json setlocal foldmethod=syntax
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
                \ setlocal showbreak=\
" \ call deoplete#custom#buffer_option('auto_complete', v:false)
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
au FileType rmd,markdown setlocal foldmethod=syntax
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

function! FormatOnSave()
    if exists('b:autoformat') && b:autoformat == 1
        silent execute '!clang-format -i ' shellescape(expand('%'), 1) 
        edit
    endif
endfunction

function! TabIfNotOpen(...)
    let fname = a:1
    let call = ''
    if a:0 == 2
        let fname = a:2
        let call = a:1
    endif
    let bufnum=bufnr(expand(fname))
    let winnum=bufwinnr(bufnum)
    if winnum != -1
        " Jump to existing split
        exe winnum . "wincmd w"
    else
        " Make new split as usual
        exe "tabnew " . fname
    endif
    " Execute the cursor movement command
    exe call
endfunction

command! -nargs=+ CocTabIfNotOpen :call TabIfNotOpen(<f-args>)

" au BufWritePost *.c,*.h,*.java,*.cpp,*.cc,*.pde call FormatOnSave()

augroup javascript
    au!
    au FileType typescript syntax keyword typescriptFuncKeyword nextgroup=typescriptAsyncFunc,typescriptFuncName,@typescriptCallSignature conceal skipwhite skipempty function cchar=ƒ
    au FileType javascript syntax keyword javaScriptFunction function conceal cchar=ƒ
    au FileType javascript syntax keyword jsFunction function conceal cchar=ƒ
    au FileType typescript,javascript highlight Conceal ctermfg=5 ctermbg=0
    set conceallevel=1
    set shiftwidth=2
augroup END

function! SynGroup()                                                            
    let l:s = synID(line('.'), col('.'), 1)                                       
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

highlight Conceal ctermfg=5
set concealcursor=
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

augroup IndentGuides
    au!
    au VimEnter,Colorscheme * :highlight IndentGuidesOdd ctermbg=235
    au VimEnter,Colorscheme * :highlight IndentGuidesEven ctermbg=235
augroup END

endif
