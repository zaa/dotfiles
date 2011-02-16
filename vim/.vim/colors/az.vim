" vim: set ts=4 sts=4 sw=4 et:

"set background=dark
"hi clear
"if exists("syntax_on")
"  syntax reset
"endif

"if has("gui_running")
"    set background=dark
"endif
"hi clear
"if exists("syntax_on")
"   syntax reset
"endif
"
"let g:colors_name = "az"
"if &background == "light" || has("gui_running")
"    hi Normal guibg=Black ctermbg=NONE
"else
"    hi Normal guibg=Black ctermbg=NONE
"endif
"
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "az"

hi Comment      ctermfg=darkgrey
hi Constant     ctermfg=none ctermbg=none
hi Special      ctermfg=darkgreen
hi Identifier   ctermfg=none ctermbg=none
hi Statement    ctermfg=darkgreen
hi PreProc      ctermfg=darkgreen ctermbg=none
hi Type         ctermfg=darkyellow
hi Function     ctermfg=darkcyan
hi Repeat       ctermfg=darkyellow
hi Operator     ctermfg=darkgreen
hi Ignore       ctermfg=Black
hi Error        ctermbg=Red                 ctermfg=White
hi Todo         ctermbg=darkcyan            ctermfg=none

hi String       ctermfg=darkcyan
hi Character    ctermfg=darkcyan
hi Number       ctermfg=darkcyan
hi Boolean      ctermfg=darkcyan
hi Delimiter    ctermfg=darkgreen
hi Keyword      ctermfg=darkyellow

hi Search       ctermfg=red ctermbg=none
hi TabLine ctermbg=white ctermfg=darkgrey term=bold cterm=bold
hi TabLineSel ctermfg=cyan

hi NonText ctermfg=darkgrey
hi SpecialKey ctermfg=darkgrey
hi MatchParen ctermfg=green ctermbg=none

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
"hi link String     Constant
"hi link Character  Constant
"hi link Number     Constant
"hi link Boolean    Constant
hi link Float       Number
hi link Conditional Repeat
hi link Label       Keyword
hi link Exception   Keyword
hi link Include     PreProc
hi link Define      PreProc
hi link Macro       PreProc
hi link PreCondit   PreProc
hi link StorageClass Type
hi link Structure   Type
hi link Typedef     Type
hi link Tag         Special
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug       Special
