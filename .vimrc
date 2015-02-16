" Modeline and Notes {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 :
" }

set nocompatible

" Setup Bundle Support & Plugin enable | disable {

        filetype off
        set rtp+=~/.vim/bundle/vundle
        call vundle#rc()

        "let g:autocomplete_switchto_neocomplcacheandother = 1
        "let g:autocomplete_use_jedi = 1

" }

" General Setting {

        set ttimeoutlen=70

        if has('clipboard')
            if has('unnamedplus')  " When possible use + register for copy-paste
                set clipboard=unnamedplus
            else         " On mac and Windows, use * register for copy-paste
                set clipboard=unnamed
            endif
        endif

        source $VIMRUNTIME/ftplugin/man.vim


        filetype plugin indent on


        set backspace=indent,eol,start whichwrap+=<,>,[,]
        "set backspace=eol,start
        set autochdir
        "set smartindent
        set cindent
        set nomore
        set wildignorecase
        set ignorecase
        set smartcase           " Case sensitive when uc present
        set wildmenu
        "set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
        set nu
        set ruler       " show the cursor position all the time
        set incsearch       " do incremental searching
        set hlsearch        " Also switch on highlighting the last used search pattern.
        set showcmd     " display incomplete commands
        set showmode                    " Display the current mode
        set hidden
        set list
        "set listchars=tab:\|\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
        set listchars=tab:┆\ ,trail:·,extends:»,nbsp:. " Highlight problematic whitespace
        set fillchars+=vert:\ 
        set history=10000       " keep 50 lines of command line history
        set completeopt=longest,menuone
        set pumheight=7   "completion pop menu count

        if has('gui_running')
            set laststatus=1
            set lazyredraw
            set synmaxcol=128
        else
            set laststatus=2
            "set colorcolumn=121
            set synmaxcol=200
        endif
        "highlight OverLength ctermbg=red ctermfg=white guibg=#592929
        "match OverLength /\%81v.\+/

        "set ttyfast
        "set ttyscroll=3
        "set regexpengine=1
        "set spell                           " Spell checking on
        "set cursorline

        "set autowrite                       " Automatically write a file when leaving a modified buffer
        "set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
        "set virtualedit=onemore             " Allow for cursor beyond last character

        "set tabpagemax=15               " Only show 15 tabs
        "set linespace=0                 " No extra spaces between rows
        "set showmatch                   " Show matching brackets/parenthesis
        "set winminheight=0              " Windows can be 0 line high
        "set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
        "set scrolljump=5                " Lines to scroll when cursor leaves screen
        "set scrolloff=3                 " Minimum lines to keep above and below cursor
        "set foldenable                  " Auto fold code
        set foldmethod=manual
        set viewoptions=folds,cursor,unix,slash " Better Unix / Windows compatibility
        syntax on       " Switch syntax highlighting on
        if has('mouse')     " In many terminal emulators the mouse works just fine, thus enable it.
            "set mouse=a
            "set mousehide               " Hide the mouse cursor while typing
        endif

" }

" Formatting {

        set nowrap                      " Do not wrap long lines
        set autoindent                  " Indent at the same level of the previous line
        set shiftwidth=4                " Use indents of 4 spaces
        set expandtab                   " Tabs are spaces, not tabs
        set tabstop=4                   " An indentation every four columns
        set softtabstop=4               " Let backspace delete indent

        autocmd FileType text setlocal textwidth=120
        autocmd FileType pandoc,markdown setlocal textwidth=120
        autocmd FileType java setlocal textwidth=110
        autocmd BufNewFile,BufRead *.note set filetype=notes
        autocmd BufEnter * silent! lcd %:p:h
""        if has('gui_running')
            autocmd BufNewFile,BufRead *.md set filetype=pandoc
""        else
"            autocmd BufNewFile,BufRead *.md set filetype=markdown
""        endif

        "set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
        "set splitright                  " Puts new vsplit windows to the right of the current
        "set splitbelow                  " Puts new split windows to the bottom of the current
        "set matchpairs+=<:>             " Match, to be used with %
        set formatoptions+=mM            "support china
        "set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
        ""set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

        " Remove trailing whitespaces and ^M chars
        " To disable the stripping of whitespace, add the following to your
        "let g:spf13_keep_trailing_whitespace = 1
        "autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml,perl autocmd BufWritePre <buffer> 
        "if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
" }

" Lanuage Setting {
        set langmenu=en_US
        let $LANG='en_US'
        set helplang=en
        scriptencoding utf-8
        set termencoding=utf-8
        set encoding=utf-8
        set fileencodings=ucs-bom,utf-8,cp936,gb18030,latin1
        set fileformat=unix
        set fileformats=unix,dos


        " Enable omni-completion.
"        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" }

" GUI {

        set t_Co=256
        if has('gui_running')
            "set guifont=Ubuntu\ Mono\ 13
            set guifont=Monospace\ 10
            set guioptions+=mTlrbL
            set guioptions-=mTlrbL
            colorscheme Tomorrow-Dawn
            colorscheme vim-jet
            let g:newDawn_original = 1
            "set guicursor=i:block-Cursor/lCursor
            behave mswin
        else
            let g:molokai_origina=1
            let g:rehash256 = 1
            set t_Co=256
            "let g:newDawn_original = 1
            colorscheme vim-jet
            colorscheme molokai
        endif


        "hi CursorLine term=bold cterm=bold guibg=Grey40
        "hi LineNr     ctermfg=250 ctermbg=236
        "hi Comment    ctermfg=246
        "let g:CSApprox_hook_post = ['hi clear SignColumn']
        "
        "highlight clear SignColumn      " SignColumn should match background
        "highlight clear LineNr          " Current line number row will have same background color in relative mode
        "highlight clear CursorLineNr    " Remove highlight color from current line number

" }

" omnicomplete {

        " Some convenient mappings
        "inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
        "inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
        inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
        inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

        "inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
        "inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

        " Automatically open and close the popup menu / preview window
        "au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
        "autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" }

" Backup {

        set nobackup
        set nowritebackup
        "set noswapfile

        if has('persistent_undo')
            set undofile                " So is persistent undo ...
            set undolevels=5000         " Maximum number of changes that can be undone
            set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
            set undodir=~/.vim/.undodir/
        endif

        "autocmd BufWritePre * call Create_bakcupdir()
        "autocmd QuitPre * if expand("%") != "" | mkview | endif
        "autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" }

" Key (re)Mappings  {

        let mapleader=','

        " Don't use Ex mode, use Q for formatting
        map Q gq

        " Delete current line
        "inoremap <C-d> <C-o>dd

        " UNDO
        inoremap <C-z> <C-O>u

        " Yank from the cursor to the end of the line, to be consistent with C and D.
        nnoremap Y y$

        " Wrapped lines goes down/up to next row, rather than next line in file.
        noremap <silent> j gj
        noremap <silent> k gk

        " Easier horizontal scrolling and Tab Switch
        map <silent> <S-H> :tabp<CR>
        map <silent> <S-L> :tabn<CR>

        noremap zl zL
        noremap zh zH

        "inoremap jj <ESC>

        "noremap <silent> <Leader>0 :call ClearSearchTitle()<CR>
        noremap <silent> <Leader>0 :noh<CR>

        " Create tab
        noremap <silent> <Leader>nn :tabnew<CR>

        " Jump line end
        inoremap <silent> <C-l> <C-o>A
        " Jump line start
        inoremap <silent> <C-h> <C-o>I

        " access normal mode
        "inoremap <C-o> <C-[>
        "snoremap <C-o> <C-[>

        " Insert timestamp
        noremap <Leader>5 a<C-R>=strftime("[%Y/%m/%d %H:%M:%S]")<CR><ESC>

        " Show current file full path
        noremap <Leader>6 :echo expand('%:p')<CR>

        " Tab switch
        "noremap <silent> <Leader>n <ESC>:tabp<CR>
        "noremap <silent> <Leader>p <ESC>:tabn<CR>

        " switch windows
        noremap <silent> <C-h> <C-w>h
        noremap <silent> <C-j> <C-w>j
        noremap <silent> <C-k> <C-w>k
        noremap <silent> <C-l> <C-w>l

        if exists("g:autocomplete_switchto_neocomplcacheandother")
            if has('gui_running')
                inoremap <unique> <C-Space>  <C-X><C-O><C-P>
            else
                inoremap <unique> <Nul>  <C-X><C-O><C-P>
            endif
        endif

        noremap <silent> <Leader>qt :!qt-creator-3.1.2 -client % &<CR>

        " For when you forget to sudo.. Really Write the file.
        cmap w!! w !sudo tee % >/dev/null

        noremap <silent> <Leader>` :call EditStatusLine()<CR>

        " Search for selected text, forwards or backwards.
        vnoremap <silent> * :<C-U>
          \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
          \gvy/<C-R><C-R>=substitute(
          \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
          \gV:call setreg('"', old_reg, old_regtype)<CR>

        vnoremap <silent> # :<C-U>
          \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
          \gvy?<C-R><C-R>=substitute(
          \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
          \gV:call setreg('"', old_reg, old_regtype)<CR>


        noremap  <silent> $ :call WrapRelativeMotion("$")<CR>
        noremap  <silent> 0 :call WrapRelativeMotion("0")<CR>
        noremap  <silent> ^ :call WrapRelativeMotion("^")<CR>
        onoremap <silent> $ v:call WrapRelativeMotion("$")<CR>
        vnoremap <silent> $ :<C-U>call WrapRelativeMotion("$", 1)<CR>
        vnoremap <silent> 0 :<C-U>call WrapRelativeMotion("0", 1)<CR>
        vnoremap <silent> ^ :<C-U>call WrapRelativeMotion("^", 1)<CR>

        " Close Quickfix
        nnoremap <silent> <Leader>cq :call ClearQuckfixAndLocationList()<CR>


"    " Code folding options
"    nmap <leader>f0 :set foldlevel=0<CR>
"    nmap <leader>f1 :set foldlevel=1<CR>
"    nmap <leader>f2 :set foldlevel=2<CR>
"    nmap <leader>f3 :set foldlevel=3<CR>
"    nmap <leader>f4 :set foldlevel=4<CR>
"    nmap <leader>f5 :set foldlevel=5<CR>
"    nmap <leader>f6 :set foldlevel=6<CR>
"    nmap <leader>f7 :set foldlevel=7<CR>
"    nmap <leader>f8 :set foldlevel=8<CR>
"    nmap <leader>f9 :set foldlevel=9<CR>
"
"    " Find merge conflict markers
"    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
"
"    " Allow using the repeat operator with a visual selection (!)
"    " http://stackoverflow.com/a/8064607/127816
"    vnoremap . :normal .<CR>
"
"
"    " Adjust viewports to the same size
"    map <Leader>= <C-w>=
"
"    " Map <Leader>ff to display all lines with keyword under cursor
"    " and ask which one to jump to
"    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
"
"
"
"    " FIXME: Revert this f70be548
"    " fullscreen mode for GVIM and Terminal, need 'wmctrl' in you PATH
"    map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

" }

" Plugin {

    " Deps {
        Plugin 'gmarik/vundle'
        Plugin 'MarcWeber/vim-addon-mw-utils'
        Plugin 'tomtom/tlib_vim'
        Plugin 'xolox/vim-misc'
        Plugin 'tpope/vim-dispatch'
        Plugin 'airblade/vim-rooter'
        Plugin 'mileszs/ack.vim'
        Plugin 'sentientmachine/erics_vim_syntax_and_color_highlighting'
        Plugin 'noahfrederick/vim-hemisu'

    " }

    " General {
        Plugin 'scrooloose/nerdtree'
        Plugin 'jistr/vim-nerdtree-tabs'

        Plugin 'bling/vim-airline'
        Plugin 'airblade/vim-gitgutter'

        "Plugin 'vim-scripts/vimwiki'
        "Plugin 'yegappan/mru'
        Plugin 'jimsei/winresizer'
        Plugin 'xolox/vim-notes'
        Plugin 'lilydjwg/fcitx.vim'
        Plugin 'Rykka/colorv.vim'
        Plugin 'majutsushi/tagbar'
        "Plugin 'jlanzarotta/bufexplorer'
        Plugin 'osyo-manga/vim-over'
        Plugin 'scrooloose/nerdcommenter'
        "Plugin 'tomtom/tcomment_vim'

        if !has('gui_running')
            Plugin 'Yggdroot/indentLine'
            Plugin 'nelstrom/vim-markdown-folding'
        endif
        Plugin 'convforper/molokai'
        Plugin 'guns/xterm-color-table.vim'
        Plugin 'guicolorscheme.vim'
        Plugin 'Lokaltog/vim-easymotion'
        Plugin 'godlygeek/csapprox'
        Plugin 'mbbill/undotree'
        "Plugin 'sjl/gundo.vim'
        "Plugin 'flazz/vim-colorschemes'
        Plugin 'matchit.zip'
        Plugin 'kien/ctrlp.vim'
        Plugin 'tacahiroy/ctrlp-funky'
        "Plugin 'yegappan/grep'
        "Plugin 'dkprice/vim-easygrep'
        Plugin 'terryma/vim-multiple-cursors'

        "Plugin 'vim-pandoc/vim-pandoc-syntax'
        Plugin 'convforper/vim-pandoc-syntax'
        "Plugin 'plasticboy/vim-markdown'
        "Plugin 'tpope/vim-markdown'
        Plugin 'tyru/open-browser.vim'
        Plugin 'file:///~/.vim/bundle/yankring_180'
        "Plugin 'szw/vim-ctrlspace'

        "Plugin 'spolu/dwm.vim'
        "Plugin 'bling/vim-bufferline'

    " }

    " AutoComplete & Program {
            " snippet template {
                Plugin 'honza/vim-snippets'
            " }

            " Check syntax {
                Plugin 'scrooloose/syntastic'
            " }
        if !has('gui_running')
            " Autocomplcache & Youcompleteme {
            if exists("g:autocomplete_switchto_neocomplcacheandother")
                Plugin 'Shougo/neocomplcache'

                if exists('g:autocomplete_use_jedi')
                    Plugin 'davidhalter/jedi-vim'
                else
                    Plugin 'klen/python-mode'
                endif

                if has('python3')
                    Plugin 'Shougo/neosnippet'
                else
                    Plugin 'JazzCore/neocomplcache-ultisnips'
                    Plugin 'SirVer/ultisnips'
                endif

            else
                "Plugin 'Valloric/YouCompleteMe'
                Plugin 'file:///~/.vim/bundle/YouCompleteMe'
                Plugin 'SirVer/ultisnips'
            endif

        endif
                "Plugin 'drmingdrmer/xptemplate'
        " Javascript {
            Plugin 'marijnh/tern_for_vim'
        " }
        " Java {
            Plugin 'file:///~/.vim/bundle/eclim24'
        " }
        " Python {
            Plugin 'convforper/Efficient-python-folding'
            " youcompleteme自带jedi
            Plugin 'davidhalter/jedi-vim'
        " }
            " }
        " Xml,Html {
            "Plugin 'sukima/xmledit'
            Plugin 'othree/xml.vim'
            Plugin 'mattn/emmet-vim'
        " }
        " gradle {
            Plugin 'tfnico/vim-gradle'
            "Plugin 'rdolgushin/groovy.vim'
        " }
    " }

    " Writing {

        Plugin 'kana/vim-textobj-user'
        Plugin 'kana/vim-textobj-indent'
        Plugin 'reedes/vim-litecorrect'
        Plugin 'reedes/vim-textobj-sentence'
        Plugin 'reedes/vim-textobj-quote'
        Plugin 'reedes/vim-wordy'
        Plugin 'tpope/vim-surround'
        "Plugin 'file:///~/.vim/bundle/autoclose'
        Plugin 'Raimondi/delimitMate'
        "Plugin 'Enter-Indent'
        Plugin 'file:///~/.vim/bundle/vimdoc'

    " }

" }


" Plugins Setting {

    " NERDtree {

        map <silent><C-e>            :NERDTreeToggle<CR>
        map <leader>e                :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=0
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=1
        let NERDTreeQuitOnOpen=0
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let NERDTreeWinPos = "right"
        let NERDTreeWinSize = 45
        let g:nerdtree_tabs_open_on_gui_startup=0
    " }

    " Airline {

        if !has('gui_running')
            "let g:airline_theme='lucius'
            "let g:airline_theme='zenburn'
            let g:airline_theme='powerlineish'
        else
            "let g:airline_theme='lucius'
            let g:airline_theme='zenburn'
        endif
        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif

        let g:airline_left_sep = '⮀'
        let g:airline_left_alt_sep = '⮁'
        let g:airline_right_sep = '⮂'
        let g:airline_right_alt_sep = '⮃' 
        "let g:airline_branch_prefix     = '⭠'
        let g:airline_symbols.branch = ''
        let g:airline_symbols.readonly = '⭤'
        let g:airline_symbols.linenr = ''
        let g:airline_symbols.branch = '⭠'
        let g:airline_symbols.paste = 'Þ'

        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#tab_nr_type = 1
        let g:airline#extensions#tabline#left_sep = ''
        let g:airline#extensions#tabline#left_alt_sep = ''
        let g:airline#extensions#tabline#show_buffers = 0
        let g:airline#extensions#tabline#tab_min_count = 2
        let g:airline#extensions#tabline#fnamemod = ':t:.'

        let g:airline#extensions#ctrlp#color_template = 'normal'
        let g:airline_detect_paste=1

        let g:airline#extensions#branch#enabled = 1
        let g:airline#extensions#tagbar#enabled = 0
        let g:airline#extensions#eclim#enabled = 1
        let g:airline#extensions#syntastic#enabled = 1

        "let g:airline_section_c = airline#section#create(['%F',' ','readonly','%m'])
        let g:airline_section_y = '%{GetFileAllInfo()}'
        let g:airline_section_z = airline#section#create(['%3p%% ', g:airline_symbols.linenr,' %l/%L',',%2c'])

        let g:airline#extensions#hunks#enabled = 1
        let g:airline#extensions#branch#enabled = 1
        let g:airline#extensions#branch#empty_message = '⭠ no master'

        let g:airline#extensions#hunks#non_zero_only = 1
        let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
        "
    " }

    " Winresizer {
        let g:winresizer_start_key = '<Leader>be'
    " }

    " Note {

        let g:notes_suffix = '.note'
        let g:sqlutil_align_where = 1
        let g:sqlutil_align_comma = 1
        let g:sqlutil_keyword_case = '\U'
        let g:sqlutil_wrap_expressions = 0
        let g:sqlutil_stmt_keywords = 'select,insert,update,delete,with,merge'

    " }


    " TextObj Sentence {
        augroup textobj_sentence
          autocmd!
          autocmd FileType markdown call textobj#sentence#init()
          autocmd FileType textile call textobj#sentence#init()
          autocmd FileType text call textobj#sentence#init()
        augroup END
    " }

    " TextObj Quote {
        augroup textobj_quote
            autocmd!
            autocmd FileType markdown call textobj#quote#init()
            autocmd FileType textile call textobj#quote#init()
            autocmd FileType text call textobj#quote#init({'educate': 0})
        augroup END
    " }

    " IndentLine {
        let g:indentLine_char = '┆'
        let g:indentLine_fileTypeExclude = ['text','help','vimwiki','markdown','notes']
        let g:indentLine_color_dark = 0
        let g:indentLine_color_tty_light = 20
        let g:indentLine_color_term = 240
    " }

    " UndoTree {
        nnoremap <silent> <S-u> :UndotreeToggle<CR>:AirlineRefresh<CR>
        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1
    " }

    " Ack {
        let g:ackprg="ack-grep -H --smart-case --nocolor --nogroup --column"
        nnoremap <Leader>a :LAck 
        "let g:ack_use_dispatch = 1

    " }
    " EasyGrep {
        "let g:EasyGrepCommand=1
        "let g:EasyGrepJumpToMatch=0
    " }

    " Ctrlp {
        let g:ctrlp_match_window = 'bottom,order:ttb,min:10,max:10,results:72'
        let g:ctrlp_use_caching = 1
        let g:ctrlp_clear_cache_on_exit = 0
        let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp'
        let g:ctrlp_root_markers = ['.idea','.project','.classpath','pom.xml']
        let g:ctrlp_working_path_mode = 'ra'
        let g:ctrlp_lazy_update = 0
        let g:ctrlp_show_hidden = 1
        let g:ctrlp_open_new_file = 't'
        let g:ctrlp_open_multiple_files = 'v'
        let g:ctrlp_follow_symlinks = 1

        let g:ctrlp_custom_ignore = {
          \ 'dir':  '\v[\/]\.(git|hg|svn)$|classes',
          \ 'file': '\v\.(exe|so|dll|class|swp)$',
          \ }


        " MRU Mode {
            let g:ctrlp_mruf_max = 10000
            nnoremap <silent> <Leader>1 :CtrlPMRU<CR>
        " }

        " Buffer Mode{
            noremap  <silent> <Leader>2 :CtrlPBuffer<CR>
        " }

        " Funky Mode {
            " CtrlP extensions
            let g:ctrlp_extensions = ['funky','line']
            let g:ctrlp_funky_syntax_highlight = 1
            nnoremap <Leader>ff :CtrlPFunky<CR>
        "}
        " Line Mode {
            nnoremap <Leader>fl :CtrlPLine<CR>
        " }
    " }
    " AutoComplete {
        if exists("g:autocomplete_switchto_neocomplcacheandother")
            " Neocomplcache {
                let g:neocomplcache_enable_at_startup = 1
                let g:neocomplcache_enable_camel_case_completion = 0
                let g:neocomplcache_enable_smart_case = 1
                "let g:neocomplcache_enable_underbar_completion = 1
                "let g:neocomplcache_enable_auto_delimiter = 1
                let g:neocomplcache_max_list = 15
                "let g:neocomplcache_force_overwrite_completefunc = 1
                let g:neocomplcache_auto_completion_start_length = 2
                "let g:neocomplcache_disable_auto_complete = 1
                "inoremap <expr><Nul> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<Nul>" : "\<C-x>\<C-u>"
                "function! s:check_back_space()
                "    let col = col('.') - 1
                "    return !col || getline('.')[col - 1] =~ '\s'
                "endfunction

                if !exists('g:neocomplcache_keyword_patterns')
                    let g:neocomplcache_keyword_patterns = {}
                endif
                let g:neocomplcache_keyword_patterns._ = '\h\w*'

                if !exists('g:neocomplcache_force_omni_patterns')
                  let g:neocomplcache_force_omni_patterns = {}
                endif
                let g:neocomplcache_force_omni_patterns.java = '\k\.\k*'

                if exists('g:autocomplete_use_jedi')

                    if !exists('g:neocomplcache_omni_functions')
                        let g:neocomplcache_omni_functions = {}
                    endif
                    let g:neocomplcache_omni_functions['python'] = 'jedi#completions'
                    let g:neocomplcache_force_omni_patterns.python = '[^. \t]\.\w*'

                endif

                " Neosnippet {
                    let g:neosnippet#enable_snipmate_compatibility = 1

                    " SuperTab like snippets behavior.
                    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                     \ "\<Plug>(neosnippet_expand_or_jump)"
                     \: pumvisible() ? "\<C-n>" : "\<TAB>"
                    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                     \ "\<Plug>(neosnippet_expand_or_jump)"
                     \: "\<TAB>"

                    " For snippet_complete marker.
                    if has('conceal')
                      set conceallevel=2 concealcursor=i
                    endif

                " }
            " }
        else 
            " YoucompleteMe {
                let g:ycm_key_list_select_completion = ['<C-n>', '<Down>'] 
                let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>'] 
                "let g:ycm_add_preview_to_completeopt = 0
                let g:ycm_min_num_of_chars_for_completion = 2
                "let g:ycm_complete_in_comments = 1
                "let g:ycm_collect_identifiers_from_tags_files = 1
                "let g:ycm_seed_identifiers_with_syntax = 1
                let g:ycm_global_ycm_extra_conf = '/home/wkc/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
                let g:ycm_filetype_blacklist = {
                      \ 'tagbar' : 1,
                      \ 'qf' : 1,
                      \ 'notes' : 1,
                      \ 'unite' : 1,
                      \ 'text' : 1,
                      \ 'vimwiki' : 1,
                      \ 'pandoc' : 1,
                      \ 'infolog' : 1,
                      \ 'mail' : 1
                      \}

                nnoremap <leader>jd :YcmCompleter GoTo<CR>
                 "let g:ycm_key_invoke_completion = '<C-j>'
                let g:ycm_server_keep_logfiles = 1
                let g:ycm_server_log_level = 'debug'

             " }
        endif

         " Tern for vim javascript {
             let g:tern_map_key=1
             let g:tern_show_argument_hints='on_hold'
         " }

         " Eclim {
             let g:EclimCompletionMethod = 'omnifunc'
             autocmd FileType java cnoreabbrev <buffer> II   JavaImportOrganize
             autocmd FileType java cnoreabbrev <buffer> MM   JavaImport
             autocmd FileType java cnoreabbrev <buffer> IM   JavaImpl
             autocmd FileType java cnoreabbrev <buffer> GS   JavaGetSet
             autocmd FileType java cnoreabbrev <buffer> GG   JavaGet
             autocmd FileType java cnoreabbrev <buffer> SS   JavaSet
             autocmd FileType java cnoreabbrev <buffer> FT   %JavaFormat
             autocmd FileType java cnoreabbrev <buffer> JC   JavaCorrect
             autocmd FileType java cnoreabbrev <buffer> JS   JavaSearch
             autocmd FileType java cnoreabbrev <buffer> PR   ProjectRefresh
             autocmd FileType java cnoreabbrev <buffer> NC   JavaNew class
             let g:EclimLoggingDisabled = 1
             let g:EclimLog4jValidate = 0
             let g:EclimGroovyValidate = 0

         " }
    " }
    " Syntastic - syntax check {
        let g:syntastic_check_on_open=1
        let g:syntastic_always_populate_loc_list = 0
        let g:syntastic_auto_loc_list = 0
        let g:syntastic_loc_list_height = 5
        let g:syntastic_javascript_checkers = ['jslint']
        let g:syntastic_html_checkers = ['jshint']
    " }
    " Emmet {
        let g:user_emmet_install_global = 0
        autocmd FileType html,css,xml,ant EmmetInstall
    " }
    " DelimitMate {
        let delimitMate_expand_cr = 1
        let delimitMate_expand_space = 1
        au FileType vim,html,java let b:delimitMate_matchpairs = "(:),[:],{:}"
    " }
    " Python-mode {
        let g:pymode_lint_write = 1
        let g:pymode_lint_on_fly = 0
        let g:pymode_rope_autoimport_import_after_complete = 1
        let g:pymode_rope_complete_on_dot = 1
        let g:pymode_lint_cwindow = 1
        let g:pymode_options_max_line_length = 0
        let g:pymode_folding = 0
        "let g:pymode_lint_checkers = ['pyflakes', 'mccabe']
        "let g:pymode_lint_ignore = "E501,W"
        "let g:pymode_trim_whitespaces = 0
        "let g:pymode_options = 0
        "let g:pymode_rope = 1
    " }
     " UltiSnips {
         filetype off
         filetype on
         let g:UltiSnipsExpandTrigger="<tab>"
         let g:UltiSnipsJumpForwardTrigger="<tab>"
         let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
         let g:UltiSnipsEditSplit="vertical"
     " }
    " Jedi {
        let g:jedi#auto_vim_configuration = 0
        let g:jedi#popup_select_first = 0
        let g:jedi#completions_command = ""
        let g:jedi#popup_on_dot = 0

    " }
    " Xptemplate {
        let g:xptemplate_always_show_pum = 1
        let g:xptemplate_key = '<Tab>'
    " }
    " Pandoc syntax {
        let g:pandoc#syntax#conceal#use = 0
    " }
    " Open browser {
        let g:netrw_nogx = 1 " disable netrw's gx mapping. 
        nmap gx <Plug>(openbrowser-smart-search) 
        vmap gx <Plug>(openbrowser-smart-search) 
    " }
    " CtrlSpace {
        hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
        hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
        hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
        hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE
        let g:ctrlspace_use_tabline = 1
        let g:airline_exclude_preview=1
    " }
    " Rooter {

        "let g:rooter_manual_only = 1
        let g:rooter_autocmd_patterns = '*.java,*.py,*.js'
        let g:rooter_patterns = ['.classpath','.project','pom.xml','*.iml']
        map <silent> <unique> <Leader>foo <Plug>RooterChangeToRootDirectory
    " }
    " gitgutter {
    " }
    " yankring {
        nnoremap <silent> <Leader>3 :YRShow<CR>
        let g:yankring_replace_n_pkey = ''
        let g:yankring_replace_n_nkey = ''
        let g:yankring_history_dir = '/home/wkc/.vim/.yankring'
    " }
    " TagBar {
        nnoremap <silent> <Leader>4 :Tagbar<CR>
        let g:tagbar_left = 1
        let g:tagbar_width = 30
    "

" }


" Functions {

        function! FontSwitch()
            if (&guifont == 'Ubuntu Mono 13')
                set guifont=Monaco\ for\ Powerline\ 10
            else
                set guifont=Ubuntu\ Mono\ 13
            endif
        endfunction

        function! Create_bakcupdir()
            if (&backup)
                if !isdirectory(expand('%:p:h').'/.bak')
                    call mkdir(expand('%:p:h').'/.bak', "p")
                endif
                let &backupdir=expand('%:p:h').'/.bak'
            else
                let &backupdir=~/
            endif
            let &backupext = strftime(".%y%m%d.%H%M%S")
        endfunction

        function! GetFileAllInfo()
                return toupper((strlen(&fenc)?'['.&fenc.']':'').((&bomb)?'[bom]':'').'['.&ff.']')
        endfunction

        function! ClearSearchTitle()
            "let @/=""
            execute 'nohlsearch'
        endfunction

        function! OmniPopup(action)
            if pumvisible()
                if a:action == 'j'
                    return "\<C-N>"
                elseif a:action == 'k'
                    return "\<C-p>"
                endif
            endif
            return a:action
        endfunction

        " Strip whitespace 
        function! StripTrailingWhitespace()
            " Preparation: save last search, and cursor position.
            let _s=@/
            let l = line(".")
            let c = col(".")
            " do the business:
            %s/\s\+$//e
            " clean up: restore previous search history, and cursor position
            let @/=_s
            call cursor(l, c)
        endfunction

        " StatusLine show or hidden
        function! EditStatusLine()
            if (&laststatus == 2)
                set laststatus=1
            else
                set laststatus=2
            endif
        endfunction

        function! WrapRelativeMotion(key, ...)
            let vis_sel=""
            if a:0
                let vis_sel="gv"
            endif
            if &wrap
                execute "normal!" vis_sel . "g" . a:key
            else
                execute "normal!" vis_sel . a:key
            endif
        endfunction

        function! ClearQuckfixAndLocationList()
            execute 'cclose'
            execute 'lclose'
            execute "LocationListClear"
            execute "QuickFixClear"
        endfunction

" }

