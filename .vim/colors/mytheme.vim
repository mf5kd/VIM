" --- My Awesome Vim Colorscheme ---
" Name: mytheme
" Author: MJ

" First, clear all existing highlighting.
highlight clear

" Only load the rest of this file if syntax highlighting is on.
if exists("syntax_on")
  syntax reset
endif

" Set the name of our colorscheme variable.
let g:colors_name = "mytheme"

" Set the background to dark or light.
set background=dark " or light

" ---- The Basics ----
" Set the default text and background colors
highlight Normal ctermfg=White ctermbg=Black guifg=#FFFFFF guibg=#000000

" ---- UI Elements ----
" Line numbers
highlight LineNr ctermfg=DarkGray guifg=#808080
" The line the cursor is on
highlight CursorLine ctermbg=DarkGray guibg=#2c2c2c
" Selected text in Visual mode
highlight Visual cterm=reverse gui=reverse

" ---- Syntax Groups ----
" Comments
highlight Comment ctermfg=Green gui=italic guifg=#00FF00

" Keywords and Statements (if, for, return, etc.)
highlight Statement ctermfg=Brown cterm=bold guifg=#808000 gui=bold

" Constants (Strings, Numbers, Booleans)
highlight Constant ctermfg=Magenta guifg=#FF00FF
highlight String ctermfg=Magenta guifg=#FF00FF
highlight Number ctermfg=Magenta guifg=#FF00FF

" Functions
highlight Function ctermfg=Cyan cterm=bold guifg=#00FFFF gui=bold

" Data Types (int, char, etc.)
highlight Type ctermfg=Blue guifg=#0000FF

" Special symbols or characters
highlight Special ctermfg=Red guifg=#FF0000

" --- UI Additions ---
highlight StatusLine  ctermfg=Black ctermbg=Yellow
highlight Search      cterm=reverse
highlight Todo        ctermfg=Black ctermbg=Yellow cterm=bold

" --- Syntax Additions ---
highlight PreProc     ctermfg=Red
highlight Identifier  ctermfg=Blue
highlight Operator    ctermfg=LightGray

" --- Core UI Additions ---
highlight CursorColumn ctermbg=DarkGray
highlight Folded      ctermfg=DarkGray ctermbg=Black
highlight MatchParen  cterm=reverse
highlight TabLine     ctermfg=White ctermbg=DarkGray
highlight TabLineSel  ctermfg=Black ctermbg=Yellow

" --- Diff Mode ---
highlight DiffAdd    ctermbg=DarkGreen
highlight DiffChange ctermbg=DarkBlue
highlight DiffDelete ctermbg=DarkRed
highlight DiffText   cterm=bold ctermbg=DarkMagenta

" --- Popup Menu (Pmenu) ---
highlight Pmenu    ctermfg=White ctermbg=DarkGray
highlight PmenuSel ctermfg=Black ctermbg=Cyan

" --- Spelling ---
highlight SpellBad cterm=underline ctermfg=Red
highlight SpellCap cterm=underline ctermfg=Blue

" --- Delimiters --- (parentheses, brackets, etc)
highlight Delimiter ctermfg=DarkCyan guifg=#008080

" --- Final UI Additions ---
highlight Title       ctermfg=DarkRed cterm=bold guifg=#800000 gui=bold
highlight Question    ctermfg=Green guifg=#00FF00
highlight WarningMsg  ctermfg=Yellow guifg=#FFFF00
highlight NonText     ctermfg=DarkGray guifg=#808080

" --- Final Syntax Additions ---
highlight Ignore      ctermfg=Black ctermbg=Black guifg=#000000 guibg=#000000
highlight Underlined  cterm=underline gui=underline
highlight Conceal     ctermfg=DarkGray guifg=#808080
