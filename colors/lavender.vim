
let s:flag = v:false

if has('gui_running')
    let s:flag = v:true
elseif has('termguicolors')
    if &termguicolors
        let s:flag = v:true
    endif
endif

if !s:flag
    finish
endif

highlight clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = substitute(fnamemodify(expand('<sfile>'), ':t'), '.vim', '', '')

highlight Normal             gui=NONE           guifg=#000000 guibg=#fcfcfc
highlight EndOfBuffer        gui=NONE           guifg=#eeeeee guibg=#fcfcfc

highlight WildMenu           gui=NONE           guifg=#ffffff guibg=#323639
highlight TabLineSel         gui=NONE           guifg=#ffffff guibg=#323639
highlight TabLine            gui=NONE           guifg=#666666 guibg=#323639
highlight TabLineFill        gui=NONE           guifg=#666666 guibg=#323639
highlight StatusLine         gui=NONE           guifg=#aaaaaa guibg=#323639
highlight StatusLineTerm     gui=NONE           guifg=#aaaaaa guibg=#323639
highlight StatusLineNC       gui=NONE           guifg=#666666 guibg=#323639
highlight StatusLineTermNC   gui=NONE           guifg=#666666 guibg=#323639
highlight VertSplit          gui=NONE           guifg=NONE    guibg=#323639

highlight ColorColumn        gui=NONE           guifg=NONE    guibg=#f7f7f7
highlight CursorLine         gui=NONE           guifg=NONE    guibg=#f7f7f7
highlight CursorColumn       gui=NONE           guifg=NONE    guibg=#f7f7f7

highlight Pmenu              gui=NONE           guifg=#aaaaaa guibg=#eeeeee
highlight PmenuSel           gui=UNDERLINE      guifg=NONE    guibg=#eeeeee
highlight PmenuSbar          gui=NONE           guifg=NONE    guibg=#f1f1f1
highlight PmenuThumb         gui=NONE           guifg=NONE    guibg=#c1c1c1

highlight Folded             gui=UNDERLINE      guifg=#333333 guibg=NONE
highlight FoldColumn         gui=NONE           guifg=#777777 guibg=#e7e7e7
highlight LineNr             gui=NONE           guifg=#aaaaaa guibg=#e7e7e7
highlight CursorLineNr       gui=NONE           guifg=#666666 guibg=#e7e7e7

highlight QuickFixLine       gui=NONE           guifg=#666666 guibg=#cccc22
highlight Search             gui=NONE           guifg=#666666 guibg=#cccc22
highlight IncSearch          gui=NONE           guifg=#666666 guibg=#cccc22
highlight Cursor             gui=NONE           guifg=#ffffff guibg=#323639
highlight Visual             gui=NONE           guifg=NONE    guibg=#eeeeee

highlight Comment            gui=NONE           guifg=#cccccc guibg=NONE
highlight SpecialKey         gui=NONE           guifg=#ddaadd guibg=NONE
highlight NonText            gui=NONE           guifg=#cccccc guibg=NONE

highlight Directory          gui=NONE           guifg=#333333 guibg=NONE
highlight Title              gui=NONE           guifg=#333333 guibg=NONE
highlight Keyword            gui=NONE           guifg=#333333 guibg=NONE
highlight Type               gui=NONE           guifg=#333333 guibg=NONE
highlight Identifier         gui=NONE           guifg=#339933 guibg=NONE
highlight Special            gui=NONE           guifg=#333399 guibg=NONE
highlight Statement          gui=NONE           guifg=#aa33aa guibg=NONE
highlight Preproc            gui=NONE           guifg=#660066 guibg=NONE
highlight String             gui=NONE           guifg=#339933 guibg=NONE
highlight Constant           gui=NONE           guifg=#333399 guibg=NONE

highlight MatchParen         gui=UNDERLINE      guifg=NONE    guibg=NONE

highlight link Identifier    DiffAdd
highlight link Special       DiffDelete
highlight      DiffChange    gui=BOLD           guifg=#993399 guibg=NONE
highlight      DiffText      gui=BOLD,UNDERLINE guifg=#993399 guibg=NONE

if has('tabsidebar')
    highlight TabSideBarSel  gui=NONE           guifg=#484848 guibg=#dcdcdc
    highlight TabSideBar     gui=NONE           guifg=#484848 guibg=#f5f5f5
    highlight TabSideBarFill gui=NONE           guifg=#484848 guibg=#f5f5f5
endif

if 0
    set laststatus=2 statusline=%!StatusLine()
    function! StatusLine() abort
        let l = line('.')
        let c = col('.')
        let syn_id = synID(l, c, 1)
        let trans_id = syn_id->synIDtrans()
        let name = syn_id->synIDattr('name')
        let name_t = trans_id->synIDattr('name')
        let fg = syn_id->synIDattr('fg#')
        let bg = syn_id->synIDattr('bg#')
        let fg = empty(fg) ? 'NONE' : fg
        let bg = empty(bg) ? 'NONE' : bg
        let display_name = empty(name_t) ? 'Normal' : (name == name_t ? name : printf('%s -> %s', name, name_t))
        return printf('%s fg=%s bg=%s', display_name, fg, bg)
    endfunction
endif

