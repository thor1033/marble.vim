" Palette: {{{

let g:marble#palette           = {}
let g:marble#palette.fg        = ['#F8F8F2', 253]

let g:marble#palette.bglighter = ['#DBD7D4', 238]
let g:marble#palette.bglight   = ['#DBD7D4', 237]
let g:marble#palette.bg        = ['#DBD7D4', 236]
let g:marble#palette.bgdark    = ['#DBD7D4', 235]
let g:marble#palette.bgdarker  = ['#DBD7D4', 234]

let g:marble#palette.comment   = ['#C1BDBB',  61]
let g:marble#palette.selection = ['#8C8989', 239]
let g:marble#palette.subtle    = ['#A6A3A2', 238]

let g:marble#palette.cyan      = ['#222125', 117]
let g:marble#palette.green     = ['#716F70',  84]
let g:marble#palette.orange    = ['#575557', 215]
let g:marble#palette.pink      = ['#2F2E32', 212]
let g:marble#palette.purple    = ['#C1BDBB', 141]
let g:marble#palette.red       = ['#575557', 203]
let g:marble#palette.yellow    = ['#3C3B3E', 228]

"
" ANSI
"
let g:marble#palette.color_0  = '#21222C'
let g:marble#palette.color_1  = '#575557'
let g:marble#palette.color_2  = '#716F70'
let g:marble#palette.color_3  = '#3C3B3E'
let g:marble#palette.color_4  = '#C1BDBB'
let g:marble#palette.color_5  = '#2F2E32'
let g:marble#palette.color_6  = '#222125'
let g:marble#palette.color_7  = '#F8F8F2'
let g:marble#palette.color_8  = '#C1BDBB'
let g:marble#palette.color_9  = '#FF6E6E'
let g:marble#palette.color_10 = '#69FF94'
let g:marble#palette.color_11 = '#FFFFA5'
let g:marble#palette.color_12 = '#D6ACFF'
let g:marble#palette.color_13 = '#FF92DF'
let g:marble#palette.color_14 = '#A4FFFF'
let g:marble#palette.color_15 = '#07060B'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! marble#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'marble'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
