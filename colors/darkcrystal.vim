
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

if &background == 'dark'
    highlight!      Comment            gui=NONE           cterm=NONE           guifg=#414141 guibg=NONE    ctermbg=NONE
else
    highlight!      Comment            gui=NONE           cterm=NONE           guifg=#a1a1a1 guibg=NONE    ctermbg=NONE
endif
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

if &background == 'dark'
    highlight!      Cursor             gui=NONE           cterm=NONE           guifg=#000000 guibg=#ffffff
    highlight!      CursorIM           gui=NONE           cterm=NONE           guifg=#000000 guibg=#cc0000
else
    highlight!      Cursor             gui=NONE           cterm=NONE           guifg=#ffffff guibg=#000000
    highlight!      CursorIM           gui=NONE           cterm=NONE           guifg=#ffffff guibg=#cc0000
endif

highlight!      Pmenu              gui=NONE           cterm=NONE           guifg=#888888 guibg=#323232
highlight!      PmenuSbar          gui=NONE           cterm=NONE           guifg=#000000 guibg=#323232
highlight!      PmenuSel           gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#323232
highlight!      PmenuThumb         gui=NONE           cterm=NONE           guifg=NONE    guibg=#ffffff ctermfg=NONE

if &background == 'dark'
    highlight!      StatusLine         gui=NONE           cterm=NONE           guifg=#888888 guibg=#171717
    highlight!      StatusLineNC       gui=NONE           cterm=NONE           guifg=#888888 guibg=#171718
    highlight!      StatusLineTerm     gui=NONE           cterm=NONE           guifg=#888888 guibg=#171717
    highlight!      StatusLineTermNC   gui=NONE           cterm=NONE           guifg=#888888 guibg=#171718
    highlight!      VertSplit          gui=NONE           cterm=NONE           guifg=#171717 guibg=#171717
else
    highlight!      StatusLine         gui=NONE           cterm=NONE           guifg=#000000 guibg=#e7e7e7
    highlight!      StatusLineNC       gui=NONE           cterm=NONE           guifg=#000000 guibg=#e7e7e8
    highlight!      StatusLineTerm     gui=NONE           cterm=NONE           guifg=#000000 guibg=#e7e7e7
    highlight!      StatusLineTermNC   gui=NONE           cterm=NONE           guifg=#000000 guibg=#e7e7e8
    highlight!      VertSplit          gui=NONE           cterm=NONE           guifg=#e7e7e7 guibg=#e7e7e7
endif

highlight!      TabLine            gui=NONE           cterm=NONE           guifg=#888888 guibg=#212121
highlight!      TabLineFill        gui=NONE           cterm=NONE           guifg=NONE    guibg=#212121 ctermfg=NONE
highlight!      TabLineSel         gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#212121

highlight!      DiffAdd            gui=NONE           cterm=NONE           guifg=#118811 guibg=NONE    ctermbg=NONE
highlight!      DiffChange         gui=BOLD           cterm=BOLD           guifg=#993399 guibg=NONE    ctermbg=NONE
highlight!      DiffDelete         gui=NONE           cterm=NONE           guifg=#dd2c2c guibg=NONE    ctermbg=NONE
highlight!      DiffText           gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=#993399 guibg=NONE    ctermbg=NONE

highlight!      CursorLine         gui=UNDERLINE      cterm=UNDERLINE      guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      CursorLineNr       gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#373737
highlight!      LineNr             gui=NONE           cterm=NONE           guifg=#888888 guibg=#171717
if &background == 'dark'
    highlight!      Normal             gui=NONE           cterm=NONE           guifg=#ffffff guibg=#171717
    highlight!      EndOfBuffer        gui=NONE           cterm=NONE           guifg=#333333 guibg=#171717
    highlight!      Visual             gui=NONE           cterm=NONE           guifg=NONE    guibg=#373737
else
    highlight!      Normal             gui=NONE           cterm=NONE           guifg=#000000 guibg=#fefefe
    highlight!      EndOfBuffer        gui=NONE           cterm=NONE           guifg=#aeaeae guibg=#fefefe
    highlight!      Visual             gui=NONE           cterm=NONE           guifg=NONE    guibg=#67e7e7
endif
highlight!      QuickFixLine       gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      Search             gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      SignColumn         gui=NONE           cterm=NONE           guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      Terminal           gui=NONE           cterm=NONE           guifg=#e0e0e0 guibg=#171717
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

