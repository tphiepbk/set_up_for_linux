let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')

"{{ Theme }}
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'tomasr/molokai'
    Plug 'wojciechkepka/vim-github-dark'
    Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

" {{ Status bar }}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

"{{ File browser }}
    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

" {{ File search}}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

" {{ Terminal }}
    Plug 'voldikss/vim-floaterm'

" {{ Auto completion}}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'yaegassy/coc-pydocstring', {'do': 'yarn install --frozen-lockfile'}

" {{ Bracket Rainbow }}
    Plug 'luochen1990/rainbow'

" {{ Indent }}
    Plug 'Yggdroot/indentLine' 

"{{ Cpp Highlighter }}
    Plug 'octol/vim-cpp-enhanced-highlight'

"{{ Python Highlighter }}
    Plug 'vim-python/python-syntax'

"{{ Python Highlighter }}
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'

" {{ Web Development Extension }}
    Plug 'mattn/emmet-vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'

" {{ Comment Extension }}
    Plug 'preservim/nerdcommenter'

"{{ Git extensions }}
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

"{{ Git blame }}
    Plug 'APZelos/blamer.nvim' 

" {{ Debugger }}
    Plug 'puremourning/vimspector'

" {{ Autosave }}
    Plug '907th/vim-auto-save'

call plug#end()

" Enable Mouse
set mouse=a

colorscheme ghdark

if exists('g:GtkGuiLoaded')
  " some code here
    call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
    call rpcnotify(1, 'Gui', 'Font', 'CaskaydiaCove Nerd Font 11')
    call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 0)
    call rpcnotify(1, 'Gui', 'Option', 'Cmdline', 0)

    " Right Click Context Menu (Copy-Cut-Paste)
    nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
    inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
    xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
    snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
endif

set relativenumber
set numberwidth=3

set showcmd

set ignorecase
nnoremap <silent> <esc> :noh<cr><esc>

set encoding=utf-8
set fileencoding=utf-8
set termguicolors

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab

set background=dark

set laststatus=2

set splitbelow
set splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader=","

nnoremap <Leader>vm :vsplit $MYVIMRC<CR>
nnoremap <Leader>vr :source $MYVIMRC<CR>

nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>bl :bn<CR>
nnoremap <Leader>bh :bp<CR>
nnoremap <Leader>bd :bd<CR>

nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>


" {{ Themes settings }}
" let g:molokai_original = 1
" let g:rehash256 = 1
" let g:gh_color = 'soft'

" {{ Airline settings molokai
let g:airline_theme='powerlineish'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline#extensions#tabline#left_alt_sep = '|',

" {{ Indent Line }}
let g:indentLine_char_list = ['|', '??', '???', '???']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '??'

" {{ Autosave  }}
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" {{ Git blame }}
let g:blamer_enabled = 1
let g:blamer_delay = 300
let g:blamer_prefix = ' -> '
let g:blamer_template = '<committer> ??? <committer-time> ??? <summary>'
let g:blamer_date_format = '%H:%M %d/%m/%y'

" {{ FLOAT TERM }}
let g:floaterm_position = 'topright'
let g:floaterm_height = 0.6
let g:floaterm_weight = 0.6
let g:floaterm_title = 'Terminal $1/$2'

nnoremap   <silent>   <C-`>    :FloatermToggle<CR>
tnoremap   <silent>   <C-`>    <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <F7>    :FloatermPrev<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F8>    :FloatermNext<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F9>   :FloatermNew<CR>
tnoremap   <silent>   <F9>   <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F10>   :FloatermKill<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermKill<CR>

" {{ Bracket Rainbow }}
let g:rainbow_active = 1

" {{ Cpp Highlighter settings }}
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let c_no_curly_error=1

" {{ Python Highlighter settings }}
let g:python_highlight_all = 1

" {{ Nerd Commenter settings }}
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" {{ Outside settings }}
let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source'.nvim_settings_dir.'nerdtree.vim'
execute 'source'.nvim_settings_dir.'fzf.vim'
execute 'source'.nvim_settings_dir.'coc.vim'

