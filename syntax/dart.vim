if exists("b:current_syntax")
  finish
endif

syntax keyword dartKeyword for in while continue do
syntax keyword dartKeyword if else switch case default break
syntax keyword dartKeyword class abstract this extends implements with new
syntax keyword dartKeyword factory mixin super interface
syntax keyword dartKeyword async await sync on operator part show
syntax keyword dartKeyword var final dynamic int String bool null void double
syntax keyword dartKeyword const return static export external Function hide
syntax keyword dartKeyword true false enum
syntax keyword dartKeyword get set as is
syntax keyword dartKeyword try catch throw finally assert rethrow
syntax keyword dartKeyword import typedef yeild covariant deffered

syntax match dartComment "\/\/.*"
syntax region dartString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region dartString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link dartKeyword Keyword
highlight link dartComment Comment
highlight link dartString String

let b:current_syntax = "dart"
