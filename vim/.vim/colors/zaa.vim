" vim: tw=0 ts=4 sw=4 

set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "az" 
hi Comment      ctermfg=DarkGrey 
hi Constant     ctermfg=grey 
hi Special      ctermfg=darkgreen 
hi Identifier   ctermfg=grey 
hi Statement    ctermfg=green 
hi PreProc      ctermfg=white 
hi Type         ctermfg=yellow 
hi Function     ctermfg=lightblue 
hi Repeat       ctermfg=yellow 
hi Operator     ctermfg=DarkCyan 
hi Ignore       ctermfg=Black 
hi Error        ctermbg=Red                 ctermfg=White 
hi Todo         ctermbg=DarkCyan            ctermfg=black 

hi String       ctermfg=DarkCyan 
hi Character    ctermfg=DarkCyan 
hi Number       ctermfg=DarkCyan 
hi Boolean      ctermfg=DarkCyan 
hi Delimiter    ctermfg=DarkGreen 
hi Keyword      ctermfg=yellow 

hi Search       ctermfg=Black               ctermbg=Red 

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
