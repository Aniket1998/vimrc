"Boilerplate for pathogen
execute pathogen#infect()
call deoplete#enable()
"Mappings for various plugins
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<Space>
nnoremap <leader>u :GundoToggle<CR>
"Recommended settings for Syntastic
set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

"delimitMate Settings
let delimitMate_matchpairs = "(:),[:],{:},<:>"
"Recommended settings for CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"own configs begin here
colorscheme codedark
let g:airline_theme = 'codedark'
syntax enable

set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

nnoremap j gj
nnoremap k gk
nnoremap gV '[v']
nnoremap <leader>s :mksession<CR>

