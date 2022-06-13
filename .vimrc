" Vundle required settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 		" Set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'   		" Let Vundle manage Vundle, required

" Plugin installations through Vundle
Plugin 'tpope/vim-fugitive'				" Fugitive Git tools
Plugin 'ryanoasis/vim-devicons'			" Vim Devicons shows icons for files
Plugin 'scrooloose/nerdtree'		    " NERDTree shows folder structure
Plugin 'itchyny/lightline.vim'			" Similar to Powerline, more minimal
Plugin 'scrooloose/syntastic'			" Syntax checking
Plugin 'honza/vim-snippets'				" User-adjustable snippets
Plugin 'tpope/vim-commentary'			" Comment out lines automatically
Plugin 'valloric/youcompleteme'			" Autocompletion engine
Plugin 'raimondi/delimitmate'			" Automatically close bracket and quote pairs
Plugin 'ap/vim-css-color'				" Shows a color preview for hex codes
Plugin 'vim-pandoc/vim-pandoc'			" Pandoc support
Plugin 'vim-pandoc/vim-pandoc-syntax'   " Pandoc syntax highlighting
Plugin 'iamcco/markdown-preview.nvim'	" Dynamic MarkDown preview

" Color themes through Vundle
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()

" General Vim config
set t_Co=256			        		" 256 color support
colorscheme PaperColor      			" Color scheme
syntax on       						" Syntax highlighting
set number 								" Line numbers on the left
set tabstop=4  							" Set tab width to 4 columns
set incsearch  							" Highlight search incrementally
set ruler    							" Show ruler
set nocompatible 						" Compatibility mode
filetype on 							" File type detection
set smartcase 							" Smartcase search
set hlsearch 							" Highlight searches
set autoindent							" Automatic indentation
set noshowmode							" To avoid the --INSERT-- text below the status bar

" Autocomplete menu
set wildmenu
set wildmode=longest,list,full			" Suggested value is the last used matching command 
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx " Ignores non-plain text files
set autochdir 							" Change working directory when opening a file

" NERDTree config
nnoremap <C-n> :NERDTreeToggle<CR>		" NERDTree keyboard shortcut
" autocmd VimEnter * NERDTree		    " Autostart NERDTree at login	
let NERDTreeShowBookmarks=1				" Start NERDTree with Bookmarks open

" lightline config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

set laststatus=2						" Sets status bar as always visible

" Syntastic basic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Pandoc settings
set nofoldenable						" Disable automatic folding
set spelllang+=it						" Add spell checker for Italian and English
