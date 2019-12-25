if exists("b:current_syntax")
  finish
endif

syntax keyword dartKeyword for if
highlight link dartKeyword Keyword

let b:current_syntax = "dart"
