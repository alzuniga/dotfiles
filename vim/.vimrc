" General Settings {{{
set background=dark		" Set background to dark
set t_Co=256			" set to 256 colors
colorscheme monokai
if version >= 600
    filetype plugin on
endif
set autochdir			" switch to current file directory
set autoread			" auto reload file changed outside
        				" of vim
set backspace=2			" allow backspacing over autoindent,
		        		" line breaks, start of insert
set browsedir=buffer	" set browser directory to related buffer
set clipboard=unamed	" use clipboard register
set directory=/tmp,.	" directory for swap file
set encoding=utf-8		" set encoding to utf-8
set laststatus=2        " Always display the status
set modelines=1			" Special comments to declare vim settings
set nocompatible		" turn off VI compatibility, *required
" }}}
" UI Configuration {{{
set autoindent			" auto indent new line as previous
set copyindent			" copy characters used for indenting
				        " on existing line
set cursorline			" draw horizontal highlight/underline
				        " on the line cursor is currently on
set lazyredraw			" Screen will not redraw while executing
				        " macros, registers, or other non-typed
				        " commands
set relativenumber              " turn line numbers on
set showmatch			" Highlight matching brace, bracket,
				        " parenthesis
set wildmenu			" Command-line completion enhanced mode
syntax enable           " syntax highlighting
" }}}
" Spaces and Tab Settings {{{
set expandtab			" Use spaces for indents
set softtabstop=4		" Number of spaces in tab when editing
set shiftwidth=4        " Number of spaces to indent
set tabstop=4			" Number of visual spaces per tab
" }}}
" Folds {{{
set foldclose=all		" Close fold when cursor isn't in it
set foldcolumn=4
set foldenable			" Enable folds
set foldlevelstart=10	" Folds with higher level will be closed
set foldmethod=indent	" Lines with equal indent form a fold
set foldnestmax=10		" Sets maximum nesting folds
" }}}
 " Backup Settings {{{
set backup			        " make backup before overwriting file
set backupcopy=yes		    " make a copy and overwrite original
set backupdir=~/.vim/backup	" location of backup files
" }}}
" Searching {{{
set incsearch			" show matching characters as typed
set hlsearch			" highlight all search matches
" }}}
" Autocommands {{{
augroup backup_ext		" Set backup extension
	autocmd!		
	autocmd BufWritePre * let &bex = '.' .strftime("%Y%b%d%X") . '.bak'
	autocmd BufWritePost .vimrc source %
augroup END
"}}}
" Vundle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'           " let Vundle manage Vundle, *required
	"  Plugins {{{
	    Plugin 'ctrlpvim/ctrlp.vim'             " ctrlp = control-p fuzzy searching
	    Plugin 'flazz/vim-colorschemes'         " vim-colorschemes - colorschme pack
	    Plugin 'itchyny/lightline.vim'          " lightline - statusline/tabline
	    Plugin 'mattn/emmet-vim'                " emmet-vim - code abbreviation expansion
	    Plugin 'mattn/webapi-vim'               " webapi-vim - vim interface to web api
	    Plugin 'hail2u/vim-css3-syntax'         " vim-css3-syntax - css3 syntax highlighting
	    Plugin 'groenewege/vim-less'            " vim-less - less syntax highlighting
	    Plugin 'jiangmiao/auto-pairs'           " auto-pairs - insert/delete brackets, parens, quotes in pairs
        Plugin 'sickill/vim-monokai'            " vim-monokai - monokai color theme
        Plugin 'terryma/vim-multiple-cursors'   " vim-multiple-cursors - multiple cursors
	" }}}
call vundle#end()		                " required
" }}}
" Plugins {{{
	" CTRL-P {{{
	set runtimepath^=~/.vim/bundle/ctrlp.vim
	" }}}
	" Emmet {{{
	    let g:user_emmet_leader_key='<c-e>'
	    " let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippets/.snippets_custom.json')), "\n"))
	" }}}
	" Lightline {{{
	    let g:lightline = {
	        \'colorscheme': 'wombat',
		\ }
	" }}}
" }}}
" Mappings {{{
"noremap <Up> <NOP>      " disable UP arrow key
"noremap <Right> <NOP>   " disable RIGHT arrow key
"noremap <Down> <NOP>    " disable DOWN arrow key
"noremap <Left> <NOP>    " disable LEFT arrow key
" }}}
" Functions {{{

"}}}
" vim:foldmethod=marker:foldlevel=0: set filetype=off
