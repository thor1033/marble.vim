if marble#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'MarbleOrange'],
    \ 'info':    ['fg', 'MarblePurple'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'MarbleGreen'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: {{{
if exists('g:ale_enabled')
  hi! link ALEError              MarbleErrorLine
  hi! link ALEWarning            MarbleWarnLine
  hi! link ALEInfo               MarbleInfoLine

  hi! link ALEErrorSign          MarbleRed
  hi! link ALEWarningSign        MarbleOrange
  hi! link ALEInfoSign           MarbleCyan

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}
" GitGutter / gitsigns: {{{
if exists('g:loaded_gitgutter')
  hi! link GitGutterAdd    DiffAdd
  hi! link GitGutterChange DiffChange
  hi! link GitGutterDelete DiffDelete
endif
if has('nvim-0.5') && luaeval("pcall(require, 'gitsigns')")
  " https://github.com/lewis6991/gitsigns.nvim requires nvim > 0.5
  " has('nvim-0.5') checks >= 0.5, so this should be future-proof.
  hi! link GitSignsAdd      DiffAdd
  hi! link GitSignsAddLn    DiffAdd
  hi! link GitSignsAddNr    DiffAdd
  hi! link GitSignsChange   DiffChange
  hi! link GitSignsChangeLn DiffChange
  hi! link GitSignsChangeNr DiffChange
  hi! link GitSignsDelete   DiffDelete
  hi! link GitSignsDeleteLn DiffDelete
  hi! link GitSignsDeleteNr DiffDelete
endif
" }}}
" Tree-sitter: {{{
" The nvim-treesitter library defines many global highlight groups that are
" linked to the regular vim syntax highlight groups. We only need to redefine
" those highlight groups when the defaults do not match the marble
" specification.
" https://github.com/nvim-treesitter/nvim-treesitter/blob/master/plugin/nvim-treesitter.vim
if exists('g:loaded_nvim_treesitter')
  " # Misc
  hi! link TSPunctSpecial Special
  " # Constants
  hi! link TSConstMacro Macro
  hi! link TSStringEscape Character
  hi! link TSSymbol MarblePurple
  hi! link TSAnnotation MarbleYellow
  hi! link TSAttribute MarbleGreenItalic
  " # Functions
  hi! link TSFuncBuiltin MarbleCyan
  hi! link TSFuncMacro Function
  hi! link TSParameter MarbleOrangeItalic
  hi! link TSParameterReference MarbleOrange
  hi! link TSField MarbleOrange
  hi! link TSConstructor MarbleCyan
  " # Keywords
  hi! link TSLabel MarblePurpleItalic
  " # Variable
  hi! link TSVariableBuiltin MarblePurpleItalic
  " # Text
  hi! link TSStrong MarbleFgBold
  hi! link TSEmphasis MarbleFg
  hi! link TSUnderline Underlined
  hi! link TSTitle MarbleYellow
  hi! link TSLiteral MarbleYellow
  hi! link TSURI MarbleYellow
  " HTML and JSX tag attributes. By default, this group is linked to TSProperty,
  " which in turn links to Identifer (white).
  hi! link TSTagAttribute MarbleGreenItalic
endif
" }}}
" nvim-cmp: {{{
" A completion engine plugin for neovim written in Lua.
" https://github.com/hrsh7th/nvim-cmp
if exists('g:loaded_cmp')
  hi! link CmpItemAbbrDeprecated MarbleError

  hi! link CmpItemAbbrMatch MarbleCyan
  hi! link CmpItemAbbrMatchFuzzy MarbleCyan

  hi! link CmpItemKindText MarbleFg
  hi! link CmpItemKindMethod Function
  hi! link CmpItemKindFunction Function
  hi! link CmpItemKindConstructor MarbleCyan
  hi! link CmpItemKindField MarbleOrange
  hi! link CmpItemKindVariable MarblePurpleItalic
  hi! link CmpItemKindClass MarbleCyan
  hi! link CmpItemKindInterface MarbleCyan
  hi! link CmpItemKindModule MarbleYellow
  hi! link CmpItemKindProperty MarblePink
  hi! link CmpItemKindUnit MarbleFg
  hi! link CmpItemKindValue MarbleYellow
  hi! link CmpItemKindEnum MarblePink
  hi! link CmpItemKindKeyword MarblePink
  hi! link CmpItemKindSnippet MarbleFg
  hi! link CmpItemKindColor MarbleYellow
  hi! link CmpItemKindFile MarbleYellow
  hi! link CmpItemKindReference MarbleOrange
  hi! link CmpItemKindFolder MarbleYellow
  hi! link CmpItemKindEnumMember MarblePurple
  hi! link CmpItemKindConstant MarblePurple
  hi! link CmpItemKindStruct MarblePink
  hi! link CmpItemKindEvent MarbleFg
  hi! link CmpItemKindOperator MarblePink
  hi! link CmpItemKindTypeParameter MarbleCyan

  hi! link CmpItemMenu Comment
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
