" Vim syntax file
" Language:	synth-patch
" Maintainer:	Noah Birnel <nbirnel at gmail dot com>
" Filenames:    *.patch
" Version:      

" FIXME:
"   - sync - last blank line, \quote, \lcont
"   - add "display" etc for speed?

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

" Let's be case-sensitive.
syn case match

syn region synpatchComment matchgroup=Comment start="(" skip=")" end=")" contains=synpatchCommentBrace
"syn region synpatchCommentBrace start="(" skip="\\)" end=")" contains=synpatchCommentBrace contained transparent
"
" Rune from vim 6.1 help
if version >= 508 || !exists("did_synpatch_syn_inits")
  if version < 508
    let did_synpatch_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

    HiLink synpatchComment     Comment

  delcommand HiLink
endif

" b: local to current buffer
let b:current_syntax = "synth-patch"
