if exists("b:current_syntax")
  finish
endif

syntax keyword dartKeyword for in while continue do
syntax keyword dartKeyword if else switch case default break
syntax keyword dartKeyword class abstract this extends implements with new
syntax keyword dartKeyword factory mixin super interface
syntax keyword dartKeyword async await sync
syntax keyword dartKeyword var final dynamic int String bool null void
syntax keyword dartKeyword const return
syntax keyword dartKeyword true false
syntax keyword dartKeyword get set
syntax keyword dartKeyword try catch throw finally assert rethrow
syntax keyword dartKeyword import

syntax match dartComment "\/\/.*"
syntax region dartString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region dartString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link dartKeyword Keyword
highlight link dartComment Comment
highlight link dartString String

let b:current_syntax = "dart"
