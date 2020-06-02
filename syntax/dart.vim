if exists("b:current_syntax")
  finish
endif

syntax keyword dartKeyword for in while continue do
syntax keyword dartKeyword if else switch case default break
syntax keyword dartKeyword class abstract this extends implements with new
syntax keyword dartKeyword factory mixin super interface
syntax keyword dartKeyword async await sync on operator part show
syntax keyword dartKeyword var final dynamic int bool void double enum
syntax keyword dartKeyword const return static export external Function hide
syntax keyword dartKeyword get set as is
syntax keyword dartKeyword try catch throw finally assert rethrow
syntax keyword dartKeyword typedef yeild covariant deffered
syntax keyword dartPreProc import
syntax keyword dartBoolean true false null

" Annotations
syntax region dartPreProc start=/\v\@/ skip=/\v\\./ end=/\v\s/

" Comments
syntax keyword dartTodo contained TODO
syntax match dartComment "\v\/\/.*$" contains=dartTodo
syntax region dartComment start=/\v\/\*/ skip=/\v\\\*/ end=/\v*\//

" Strings
syntax region dartInterpolation contained start=/\v\$\{/ skip=/\v\\./ end=/\v\}/
syntax region dartString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=dartInterpolation
syntax region dartString start=/\v'/ skip=/\v\\./ end=/\v'/ contains=dartInterpolation

" Numbers
syntax match dartNumber "\d"
syntax match dartFloat "\d\.\d"

" Classes
syntax match dartClass "\(_\|\s\)[A-Z]\w\+"
syntax match dartClass "\<_\?[A-Z]\w\+\>"

" Properties
syntax match flutterProperty "[a-z]\w\+\:"

highlight link dartBoolean Boolean
highlight link dartClass Type
highlight link dartComment Comment
highlight link dartFloat Float
highlight link dartInterpolation PreProc
highlight link dartKeyword Keyword
highlight link dartNumber Number
highlight link dartPreProc PreProc
highlight link dartString String
highlight link dartTodo Todo
highlight link dartType Type

highlight link flutterProperty Identifier

let b:current_syntax = "dart"
