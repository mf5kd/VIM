" --- CoC Configuration ---
" Disable CoC by default on startup
let g:coc_start_on_startup = 1

" --- Vim-Plug and Plugins ---
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- Add new themes here ---
Plug 'folke/tokyonight.nvim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()
" ___ END Plugins ___

" --- CoC Functions and Mappings ---
" Function to toggle CoC on and off
function! CocToggle()
  if get(g:, 'coc_enabled', 0)
    CocDisable
    echo "CoC disabled."
  else
    CocEnable
    echo "CoC enabled."
  endif
endfunction

" find and replace function
function! FindReplace()
    let l:old_word = input('Find: ')
    " If the user just presses Enter, stop here.
    if empty(l:old_word)
        echo "Find field was empty. Aborting."
        return
    endif
    
    let l:new_word = input('Replace: ')
    
    " 'execute' builds the command as a string first, then runs it.
    " This avoids all the errors.
    execute '%s/\<' . l:old_word . '\>/' . l:new_word . '/gc'
endfunction

" Create a custom command for the function
command! CocToggle call CocToggle()

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Show documentation on hover
nmap <silent> K <Plug>(coc-hover)
" Find references
nmap <silent> gr <Plug>(coc-references)
" Map <leader>l to toggle CoC
nnoremap <leader>l :CocToggle<CR>

" --- General Vim Settings ---
" Automatically turn on spell check for text and markdown files
autocmd FileType txt setlocal spell
autocmd FileType markdown setlocal spell

" Set your preferred language (US English in this case)
set spelllang=en_us
syntax on
au BufNewFile,BufRead *.lol setf lolcode
set nu
filetype plugin indent on
set autoindent
set smartindent
set tabstop=4       " Number of visual spaces per tab. default = 4
set shiftwidth=4    " Number of spaces to use for autoindenting. default = 4
set expandtab       " Use spaces instead of tabs.
set hlsearch
set incsearch
set ignorecase
set smartcase
set foldmethod=indent
set foldlevelstart=99 " Start with all folds open.
set termguicolors
colorscheme dracula

" --- HotKeys ---
nnoremap <F5> :w <bar> !lci %<CR>
" Saves the file and runs 'make' to build the project based on the Makefile
nnoremap <F6> :w !clear; make && ./main<CR>

nnoremap <F7> :w <bar> !python3 %<CR>

" Map F2 to save
nnoremap <F2> :w<CR>

" Map F3 to save and quit
nnoremap <F3> :wq<CR>

" Map F4 to find and replace word
nnoremap <F4> :call FindReplace()<CR>
