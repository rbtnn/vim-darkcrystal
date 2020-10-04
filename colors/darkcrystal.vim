
let s:flag = v:false

if has('gui_running')
    let s:flag = v:true
elseif has('termguicolors')
    set termguicolors
    let s:flag = v:true
endif

if !s:flag
    finish
endif

highlight clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = substitute(fnamemodify(expand('<sfile>'), ':t'), '.vim', '', '')

highlight!      Comment            gui=NONE           cterm=NONE           guifg=#414141 guibg=NONE    ctermbg=NONE
highlight!      Constant           gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      Directory          gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      Identifier         gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      PreProc            gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      Special            gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      SpecialKey         gui=NONE           cterm=NONE           guifg=#214141 guibg=NONE    ctermbg=NONE
highlight!      Statement          gui=NONE           cterm=NONE           guifg=#04bbff guibg=NONE    ctermbg=NONE
highlight!      Title              gui=NONE           cterm=NONE           guifg=#04bbff guibg=NONE    ctermbg=NONE
highlight!      Type               gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      UnderLined         gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE

highlight!      Error              gui=NONE           cterm=NONE           guifg=#ffffff guibg=#ff0000 ctermbg=NONE

highlight!      Cursor             gui=NONE           cterm=NONE           guifg=#000000 guibg=#ffffff
highlight!      CursorIM           gui=NONE           cterm=NONE           guifg=#000000 guibg=#cc0000

highlight!      Pmenu              gui=NONE           cterm=NONE           guifg=#888888 guibg=#323232
highlight!      PmenuSbar          gui=NONE           cterm=NONE           guifg=#000000 guibg=#323232
highlight!      PmenuSel           gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#323232
highlight!      PmenuThumb         gui=NONE           cterm=NONE           guifg=NONE    guibg=#ffffff ctermfg=NONE

highlight!      StatusLine         gui=NONE           cterm=NONE           guifg=#888888 guibg=#333333
highlight!      StatusLineNC       gui=NONE           cterm=NONE           guifg=#888888 guibg=#33333b
highlight!      StatusLineTerm     gui=NONE           cterm=NONE           guifg=#888888 guibg=#333333
highlight!      StatusLineTermNC   gui=NONE           cterm=NONE           guifg=#888888 guibg=#33333b

highlight!      TabLine            gui=NONE           cterm=NONE           guifg=#888888 guibg=#212121
highlight!      TabLineFill        gui=NONE           cterm=NONE           guifg=NONE    guibg=#212121 ctermfg=NONE
highlight!      TabLineSel         gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#212121

highlight!      DiffAdd            gui=NONE           cterm=NONE           guifg=#118811 guibg=NONE    ctermbg=NONE
highlight!      DiffChange         gui=BOLD           cterm=BOLD           guifg=#993399 guibg=NONE    ctermbg=NONE
highlight!      DiffDelete         gui=NONE           cterm=NONE           guifg=#dd2c2c guibg=NONE    ctermbg=NONE
highlight!      DiffText           gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=#993399 guibg=NONE    ctermbg=NONE

highlight!      CursorLine         gui=UNDERLINE      cterm=UNDERLINE      guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      CursorLineNr       gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#373737
highlight!      EndOfBuffer        gui=NONE           cterm=NONE           guifg=#333333 guibg=#171717
highlight!      LineNr             gui=NONE           cterm=NONE           guifg=#333333 guibg=#171717
highlight!      Normal             gui=NONE           cterm=NONE           guifg=#ffffff guibg=#171717
highlight!      QuickFixLine       gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      Search             gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      SignColumn         gui=NONE           cterm=NONE           guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      Terminal           gui=NONE           cterm=NONE           guifg=#e0e0e0 guibg=#171717
highlight!      VertSplit          gui=NONE           cterm=NONE           guifg=#333333 guibg=#333333
highlight!      Visual             gui=NONE           cterm=NONE           guifg=NONE    guibg=#373737
highlight!      WildMenu           gui=NONE           cterm=NONE           guifg=#000000 guibg=#55ddf5

highlight! link ErrorMsg           Error
highlight! link Folded             Visual
highlight! link IncSearch          Search
highlight! link diffAdded          DiffAdd
highlight! link diffRemoved        DiffDelete

if !has('tabsidebar')
    finish
endif

highlight!      TabSideBar          gui=NONE          cterm=NONE           guifg=#888888 guibg=#212121
highlight!      TabSideBarFill      gui=NONE          cterm=NONE           guifg=NONE    guibg=#212121 ctermfg=NONE
highlight!      TabSideBarSel       gui=BOLD          cterm=BOLD           guifg=#04aadd guibg=#212121
highlight!      TabSideBarUnderline gui=UNDERLINE     cterm=UNDERLINE      guifg=#101010 guibg=#212121

