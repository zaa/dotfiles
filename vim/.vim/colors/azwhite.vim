" vim: tw=0 ts=4 sw=4

"set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "azwhite"
hi Comment		ctermfg=DarkGrey
hi Constant		ctermfg=Black
hi Special		ctermfg=DarkBlue
hi Identifier	ctermfg=DarkBlue
hi Statement	ctermfg=DarkBlue
hi PreProc		ctermfg=Black	
hi Type			ctermfg=DarkBlue
hi Function		ctermfg=DarkBlue
hi Repeat		ctermfg=DarkBlue
hi Operator		ctermfg=DarkBlue
hi Ignore		ctermfg=Black
hi Error		ctermbg=Red				ctermfg=Black
"hi Todo		ctermbg=DarkBlue		ctermfg=Black
hi Todo			cterm=reverse ctermfg=none ctermbg=none

hi String		ctermfg=DarkRed
hi Character	ctermfg=DarkBlue
hi Number		ctermfg=DarkRed
hi Boolean		ctermfg=DarkCyan
hi Delimiter	ctermfg=Black
hi Keyword		ctermfg=DarkBlue

hi Search       ctermfg=white       ctermbg=Cyan
hi TabLine ctermbg=Black ctermfg=White term=bold cterm=bold
hi TabLineSel ctermfg=DarkBlue

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
"hi link String		Constant
"hi link Character	Constant
"hi link Number		Constant
"hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Keyword
hi link Exception	Keyword
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag			Special
hi link SpecialChar	Special
hi link SpecialComment Special
hi link Debug		Special
