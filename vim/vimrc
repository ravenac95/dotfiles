filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Code Folding
set foldmethod=indent
set foldlevel=99

" Indenting
set nocompatible
set ruler
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set linebreak

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

" Pyflakes don't use quickfix
let g:pyflakes_use_quickfix = 0

" PEP8
let g:pep8_map='<leader>8'

" Python Auto Completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" RopeVim (Refactoring Tools)
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Searching
nmap <leader>a <Esc>:Ack!

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

" Sass specific
autocmd FileType sass setlocal tabstop=2 shiftwidth=2 softtabstop=2
