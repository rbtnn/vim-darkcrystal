
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

highlight!      Comment            gui=NONE           guifg=#043355 guibg=NONE
highlight!      Constant           gui=NONE           guifg=#045599 guibg=NONE
highlight!      Directory          gui=NONE           guifg=#045599 guibg=NONE
highlight!      Identifier         gui=NONE           guifg=#045599 guibg=NONE
highlight!      PreProc            gui=NONE           guifg=#045599 guibg=NONE
highlight!      Special            gui=NONE           guifg=#045599 guibg=NONE
highlight!      SpecialKey         gui=NONE           guifg=#045599 guibg=NONE
highlight!      Statement          gui=NONE           guifg=#04aadd guibg=NONE
highlight!      Title              gui=NONE           guifg=#04aadd guibg=NONE
highlight!      Type               gui=NONE           guifg=#045599 guibg=NONE
highlight!      UnderLined         gui=NONE           guifg=#045599 guibg=NONE

highlight!      Error              gui=NONE           guifg=#ff0000 guibg=NONE

highlight!      Cursor             gui=NONE           guifg=#000000 guibg=#ffffff
highlight!      CursorIM           gui=NONE           guifg=#000000 guibg=#cc0000

highlight!      Pmenu              gui=NONE           guifg=#888888 guibg=#323232
highlight!      PmenuSbar          gui=NONE           guifg=#000000 guibg=#323232
highlight!      PmenuSel           gui=BOLD           guifg=#ffffff guibg=#323232
highlight!      PmenuThumb         gui=NONE           guifg=NONE    guibg=#ffffff

highlight!      StatusLine         gui=NONE           guifg=#888888 guibg=#333333
highlight!      StatusLineNC       gui=NONE           guifg=#888888 guibg=#33333b
highlight!      StatusLineTerm     gui=NONE           guifg=#888888 guibg=#333333
highlight!      StatusLineTermNC   gui=NONE           guifg=#888888 guibg=#33333b

highlight!      TabLine            gui=NONE           guifg=#888888 guibg=#000000
highlight!      TabLineFill        gui=NONE           guifg=NONE    guibg=#000000
highlight!      TabLineSel         gui=BOLD           guifg=#000000 guibg=NONE

highlight!      DiffAdd            gui=NONE           guifg=#118811 guibg=NONE
highlight!      DiffChange         gui=BOLD           guifg=#993399 guibg=NONE
highlight!      DiffDelete         gui=NONE           guifg=#dd2c2c guibg=NONE
highlight!      DiffText           gui=BOLD,UNDERLINE guifg=#993399 guibg=NONE

"highlight!      CursorLineNr       gui=BOLD           guifg=#7799aa guibg=#bbddee
highlight!      EndOfBuffer        gui=NONE           guifg=#333333 guibg=#171717
"highlight!      LineNr             gui=NONE           guifg=#999999 guibg=#ddeeff
highlight!      Normal             gui=NONE           guifg=#ffffff guibg=#171717
highlight!      Search             gui=NONE           guifg=NONE    guibg=#55ddf5
highlight!      SignColumn         gui=NONE           guifg=NONE    guibg=NONE
highlight!      Terminal           gui=NONE           guifg=#e0e0e0 guibg=#171717
highlight!      VertSplit          gui=NONE           guifg=#333333 guibg=#333333
highlight!      WildMenu           gui=NONE           guifg=#000000 guibg=#55ddf5

highlight! link diffAdded          DiffAdd
highlight! link diffRemoved        DiffDelete
highlight! link IncSearch          Search
highlight! link ErrorMsg           Error

if !has('tabsidebar')
    finish
endif

highlight!      TabSideBar          gui=NONE           guifg=#888888 guibg=#212121
highlight!      TabSideBarFill      gui=NONE           guifg=#0f1b1f guibg=#212121
highlight!      TabSideBarTitle     gui=BOLD           guifg=#e0e0e0 guibg=#212121
highlight!      TabSideBarUnderline gui=UNDERLINE      guifg=#181818 guibg=#212121
highlight! link TabSideBarSel       TabSideBar

