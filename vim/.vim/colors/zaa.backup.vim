" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@mossbayeng.com>
" Last Change:	2001 Jul 28

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "zaa"
hi Comment		ctermfg=darkgrey
hi Constant		ctermfg=DarkCyan
hi Special		ctermfg=DarkCyan
hi Identifier	ctermfg=DarkCyan
hi Statement	ctermfg=white
hi PreProc		ctermfg=white
hi Type			ctermfg=LightGreen
hi Function		ctermfg=White
hi Repeat		ctermfg=White
hi Operator		ctermfg=darkgreen
hi Ignore		ctermfg=black

hi Error		ctermbg=Red ctermfg=White
hi Todo			ctermbg=Yellow ctermfg=Black

hi String		ctermfg=Green
hi Character	ctermfg=DarkCyan
hi Number		ctermfg=Cyan
hi Boolean		ctermfg=white
hi Delimiter	ctermfg=grey
hi Keyword		ctermfg=yellow

hi Search		ctermfg=white				ctermbg=green

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link SpecialComment Special
hi link Debug		Special

"syn match Space " "
"syn match Tab "\t"
"hi def Space ctermbg=DarkBlue guibg=#500000
"hi def Tab ctermbg=DarkCyan guibg=#003000
