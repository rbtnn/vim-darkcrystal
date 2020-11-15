
let s:flag = v:false

if has('gui_running')
    let s:flag = v:true
elseif exists('&termguicolors')
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
if &background == 'dark'
    highlight!      SpecialKey         gui=NONE           cterm=NONE           guifg=#214141 guibg=NONE    ctermbg=NONE
    highlight!      Statement          gui=NONE           cterm=NONE           guifg=#04bbff guibg=NONE    ctermbg=NONE
else
    highlight!      SpecialKey         gui=NONE           cterm=NONE           guifg=#d1f1f1 guibg=NONE    ctermbg=NONE
    highlight!      Statement          gui=NONE           cterm=NONE           guifg=#0499dd guibg=NONE    ctermbg=NONE
endif
highlight!      Title              gui=NONE           cterm=NONE           guifg=#04bbff guibg=NONE    ctermbg=NONE
highlight!      Type               gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE
highlight!      UnderLined         gui=NONE           cterm=NONE           guifg=#0477bb guibg=NONE    ctermbg=NONE

highlight!      Error              gui=NONE           cterm=NONE           guifg=#ffffff guibg=#ff0000 ctermbg=NONE

if &background == 'dark'
    highlight!      Cursor             gui=NONE           cterm=NONE           guifg=#000000 guibg=#cccccc
    highlight!      CursorIM           gui=NONE           cterm=NONE           guifg=#000000 guibg=#cc0000
else
    highlight!      Cursor             gui=NONE           cterm=NONE           guifg=#000000 guibg=#cccccc
    highlight!      CursorIM           gui=NONE           cterm=NONE           guifg=#ffffff guibg=#cc0000
endif

highlight!      Pmenu              gui=NONE           cterm=NONE           guifg=#888888 guibg=#070707
highlight!      PmenuSbar          gui=NONE           cterm=NONE           guifg=#000000 guibg=#070707
highlight!      PmenuSel           gui=BOLD           cterm=BOLD           guifg=#04aadd guibg=#0a0a0a
highlight!      PmenuThumb         gui=NONE           cterm=NONE           guifg=NONE    guibg=#cccccc ctermfg=NONE

if &background == 'dark'
    highlight!      StatusLine         gui=NONE           cterm=NONE           guifg=#cccccc guibg=#016699
    highlight!      StatusLineNC       gui=NONE           cterm=NONE           guifg=#cccccc guibg=#01669a
    highlight!      StatusLineTerm     gui=NONE           cterm=NONE           guifg=#cccccc guibg=#016699
    highlight!      StatusLineTermNC   gui=NONE           cterm=NONE           guifg=#cccccc guibg=#01669a
    highlight!      VertSplit          gui=NONE           cterm=NONE           guifg=#016699 guibg=#016699
else
    highlight!      StatusLine         gui=NONE           cterm=NONE           guifg=#ffffff guibg=#0477bb
    highlight!      StatusLineNC       gui=NONE           cterm=NONE           guifg=#ffffff guibg=#0477bc
    highlight!      StatusLineTerm     gui=NONE           cterm=NONE           guifg=#ffffff guibg=#0477bb
    highlight!      StatusLineTermNC   gui=NONE           cterm=NONE           guifg=#ffffff guibg=#0477bc
    highlight!      VertSplit          gui=NONE           cterm=NONE           guifg=#0477bb guibg=#0477bb
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
highlight!      Terminal           gui=NONE           cterm=NONE           guifg=#e0e0e0 guibg=#0a0a0a
if &background == 'dark'
    highlight!      Normal             gui=NONE           cterm=NONE           guifg=#ffffff guibg=#0a0a0a
    highlight!      EndOfBuffer        gui=NONE           cterm=NONE           guifg=#111111 guibg=#0a0a0a
    highlight!      Visual             gui=NONE           cterm=NONE           guifg=#333333 guibg=#101010
    highlight!      LineNr             gui=NONE           cterm=NONE           guifg=#888888 guibg=#0a0a0a
else
    highlight!      Normal             gui=NONE           cterm=NONE           guifg=#000000 guibg=#fefefe
    highlight!      EndOfBuffer        gui=NONE           cterm=NONE           guifg=#aeaeae guibg=#fefefe
    highlight!      Visual             gui=NONE           cterm=NONE           guifg=NONE    guibg=#67e7e7
    highlight!      LineNr             gui=NONE           cterm=NONE           guifg=#888888 guibg=#171717
endif
highlight!      QuickFixLine       gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      Search             gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      SignColumn         gui=NONE           cterm=NONE           guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE
highlight!      WildMenu           gui=NONE           cterm=NONE           guifg=#000000 guibg=#55ddf5

highlight! link ErrorMsg           Error
highlight! link Folded             Visual
highlight! link IncSearch          Search
highlight! link diffAdded          DiffAdd
highlight! link diffRemoved        DiffDelete

if !has('tabsidebar')
    finish
endif

highlight!      TabSideBar          gui=NONE          cterm=NONE           guifg=#888888 guibg=#101010
highlight!      TabSideBarFill      gui=NONE          cterm=NONE           guifg=NONE    guibg=#101010 ctermfg=NONE
highlight!      TabSideBarSel       gui=BOLD          cterm=BOLD           guifg=#04aadd guibg=#101010
highlight!      TabSideBarUnderline gui=UNDERLINE     cterm=UNDERLINE      guifg=#000000 guibg=#101010

