" Vim syntax file
" Language: Deca

if exists("b:current_syntax")
    finish
endif

" keyword definitions
syn keyword decaOtherKeyword asm class extends instanceof new protected return this
hi def link decaOtherKeyword Keyword

" builtin functions
syn keyword decaKeywordFunc readInt readFloat print println printlnx printx
hi def link decaKeywordFunc Function

" preprocessor-like instructions
syn keyword decaExternal #include
hi def link decaExternal Include

" conditionals
syn keyword decaCond if else
hi def link decaCond Conditional

" booleans
syn keyword decaBool true false
hi def link decaBool Boolean

" loops
syn keyword decaLoop while
hi def link decaLoop Repeat

" constants
syn keyword decaNull null
hi def link decaNull Constant

syn match decaNum /\v\d+/
hi def link decaNum Number

syn match decaFloat /\v\d+\.\d+/
hi def link decaFloat Number

syn match decaInvalidNum /\v0\d*[1-9]\d*/
hi def link decaInvalidNum Error

syn region decaString start=/\v"/ end=/\v"/ skip=/\v\\./
hi def link decaString String

" comments
syn match decaOneLineComment /\v\/\/.*$/
hi def link decaOneLineComment Comment

syn region decaMultiLineComment start=/\/\*/ end=/\*\//
hi def link decaMultiLineComment Comment

let b:current_syntax = "deca"

" vim: ts=8
