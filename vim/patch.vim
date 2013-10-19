" Vim syntax file
" Language:	synthesizer patch
" Author:       Noah Birnel <nbirnel@gmail.com>
" Maintainer:   Noah Birnel <nbirnel@gmail.com>
" Filenames:    *.patch
" Version Info: Tue, 15 Oct 2013 12:36:00 +800

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" shut case off
syntax case ignore

syntax match patchComment /^#.*/

syntax match patchKnob /^[^:] :/
hi default patchRecordNum ctermfg=DarkRed guifg=white guibg=DarkRed 

syntax match patchOut /^[^→] →/
hi default patchToken ctermfg=LightYellow guifg=white guibg=LightYellow 

syntax match patchC /^@C [^ ]*/
hi default patchC ctermfg=DarkYellow guifg=white guibg=DarkYellow 

syntax match patchMedia /^@MEDIA .*/
syntax match patchEdoc /^@EDOC/
syntax match patchEmail /^@EMAIL/
syntax match patchAttachment /^@ATTACHMENT/
hi link patchMedia patchMediaType
hi link patchEdoc patchMediaType
hi link patchEmail patchMediaType
hi link patchAttachment patchMediaType
hi default patchMediaType ctermfg=DarkCyan guifg=white guibg=DarkCyan 
 

syn match patchT /^@T /
hi default  patchT ctermfg=LightBlue guifg=white guibg=LightBlue

syn match patchD /^@D /
hi default patchD ctermfg=DarkMagenta guifg=white guibg=DarkMagenta 

syn match patchI /@I/
hi default patchI ctermfg=DarkGreen guifg=white guibg=DarkGreen 

syn match patchBatesBeg /^@BATESBEG / 
hi default patchBatesBeg ctermfg=LightGreen guifg=White guibg=LightGreen

syn match patchBatesEnd /^@BATESEND / 
hi default patchBatesEnd ctermfg=LightGreen guifg=White guibg=LightGreen


if version >= 508 || !exists("did_patch_syn_inits")
  if version < 508
    let did_patch_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink patchComment     Comment
  HiLink patchFunction     Function

  HiLink patchDelimiter   Delimiter

  delcommand HiLink
endif

" b: local to current buffer
let b:current_syntax = "patch"
