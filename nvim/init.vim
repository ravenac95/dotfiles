set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'Shougo/unite.vim'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'fholgado/minibufexpl.vim'
Plug 'mileszs/ack.vim'
Plug 'sjl/gundo.vim'
Plug 'alfredodeza/pytest.vim'
Plug 'reinh/vim-makegreen'
Plug 'vim-scripts/TaskList.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-haml'
Plug 'lambdalisue/nose.vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'rodjek/vim-puppet'
Plug 'wojtekmach/vim-rename'
Plug 'klen/python-mode'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'kchmck/vim-coffee-script'
Plug 'saltstack/salt-vim'
Plug 'stephpy/vim-yaml'
Plug 'wookiehangover/jshint.vim'
Plug 'markcornick/vim-terraform'
Plug 'robbles/logstash.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim'

call plug#end()

" Code Folding
set foldmethod=indent
set foldlevel=99
set number

" Indenting
set ruler
set nosmartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set linebreak
" Hit indentation levels instead of -4/+4
set shiftround 

" Hide buffers don't delete
set hidden

" Window Split Movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" TaskList
map <leader>td <Plug>TaskList

" Revision History
map <leader>g :GundoToggle<CR>

" Syntax Highlighting
syntax on

" Try to detect filetypes
filetype on

" enable loading indent file for filetype
filetype plugin indent on 
filetype plugin on

" Python Auto Completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-Tab>"
set completeopt=menuone,longest,preview

" RopeVim (Refactoring Tools)
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Searching
nmap <leader>a <Esc>:Ack!

" Status Line Settings
set showmode
set showcmd
set mouse=a
set ruler
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%{fugitive#statusline()}

map <Leader>] <Plug>MakeGreen " change from <Leader>t to <Leader>]

" NERDTree Mapping
map <Leader>n :NERDTreeToggle<CR>

" Highligh all search pattern matches
set hlsearch

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Javascript Specific
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" YAML Specific
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Sass specific
autocmd FileType sass setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Scss specific
autocmd FileType scss setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Ruby specific
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2

" EJS File extension
autocmd BufNewFile,BufRead *.ejs set filetype=html

" Jinja2 file extension
autocmd BufNewFile,BufRead *.jinja set filetype=jinja

" VEfile file
autocmd BufNewFile,BufRead VEfile set filetype=yaml

" Markdown files
autocmd BufNewFile,BufRead *.md set filetype=markdown

" System Clipboard support
set clipboard=unnamed

" Disable audio beeping
set vb

" Run linter on the fly
let pymode_lint_on_fly = 0

" Don't open quickfix for pylint
let pymode_lint_cwindow = 0

" Ignore these pylint warning
let pymode_lint_ignore = "W404"

let pymode_repo_guess_project = 0

let pymode_rope_completion = 0

let pymode_rope = 0

let pymode_rope_complete_on_dot = 0

"let g:neocomplete#enable_at_startup = 1

let g:deoplete#enable_at_startup = 1

" File Tab complete 
set wildmenu

" Ignore warnings in javascript
let g:syntastic_quiet_messages = {'level': 'warnings'}

let g:syntastic_ignore_files=['\c.*\.rst']

"let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap // y/<C-R>"<CR>
