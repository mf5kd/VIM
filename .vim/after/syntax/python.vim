" Highlight 'self' as a special keyword
syn keyword pythonSelf self

" Link our new group to the standard 'Special' highlight group
hi link pythonSelf Special

" Define a new group for method calls
syn match pythonMethod "\.\zs\w\+\ze("

" Link our new group to the standard 'Function' highlight group
hi link pythonMethod Function
