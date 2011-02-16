" vim: set ts=4 sts=4 sw=4 et:

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "azwhite2"

hi Comment      ctermfg=darkgrey
hi Constant     ctermfg=none            ctermbg=none
hi Special      ctermfg=darkblue
hi Identifier   ctermfg=none            ctermbg=none
hi Statement    ctermfg=darkgreen
hi PreProc      ctermfg=darkgreen       ctermbg=none
hi Type         ctermfg=darkyellow
hi Function     ctermfg=darkblue
hi Repeat       ctermfg=darkyellow
hi Operator     ctermfg=darkblue
hi Ignore       ctermfg=black
hi Error        ctermbg=red             ctermfg=white
hi Todo         ctermbg=darkblue        ctermfg=none

hi String       ctermfg=darkgreen
hi Character    ctermfg=darkblue
hi Number       ctermfg=darkred
hi Boolean      ctermfg=darkgreen
hi Delimiter    ctermfg=darkmagenta
hi Keyword      ctermfg=darkmagenta

hi Search       ctermfg=white           ctermbg=red
hi TabLine      ctermbg=white           ctermfg=darkgrey
hi TabLineSel   ctermfg=cyan

hi NonText      ctermfg=darkgrey
hi SpecialKey   ctermfg=darkgrey
hi MatchParen   ctermfg=darkblue        ctermbg=none
hi TODO         ctermfg=white           ctermbg=cyan
hi Folded       ctermbg=none            ctermfg=blue
hi LineNr       ctermbg=white           ctermfg=black
hi Visual       ctermbg=darkblue        ctermfg=white           cterm=none

hi Pmenu        ctermbg=darkblue        ctermfg=white           cterm=none
hi PmenuSel     ctermbg=cyan

hi link mailHeaderKey String
hi link mailSubject mailHeaderKey

"hi link String         Constant
"hi link Character      Constant
"hi link Number         Constant
"hi link Boolean        Constant
hi link Float           Number
hi link Conditional     Repeat
hi link Label           Keyword
hi link Exception       Keyword
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special
