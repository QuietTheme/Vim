" A colorscheme for the Quiet theme
" Template from github.com/sonph/onehalf 

set background=dark
highlight clear
syntax reset

let g:colors_name="quiet"
let colors_name="quiet"


let s:black       = { "gui": "#181E23", "cterm": "236" }
let s:red         = { "gui": "#FF8080", "cterm": "168" }
let s:green       = { "gui": "#97D59B", "cterm": "114" }
let s:yellow      = { "gui": "#FFFE80", "cterm": "180" }
let s:orange      = { "gui": "#FFBF80", "cterm": "182" }
let s:blue        = { "gui": "#80D1FF", "cterm": "75"  }
let s:purple      = { "gui": "#C780FF", "cterm": "176" }
let s:cyan        = { "gui": "#80FFE4", "cterm": "73"  }
let s:white       = { "gui": "#B6C4DB", "cterm": "188" }

let s:fg          = s:white
let s:bg          = s:black

let s:comment_fg  = { "gui": "#384149", "cterm": "241" }
let s:gutter_bg   = { "gui": "#242D35", "cterm": "236" }
let s:gutter_fg   = { "gui": "#1E272F", "cterm": "247" }
let s:num_col_bg  = { "gui": "#181E23", "cterm": "237" }
let s:num_col_fg  = { "gui": "#384149", "cterm": "237" }
let s:non_text    = { "gui": "#384149", "cterm": "239" }

let s:cursor_line = { "gui": "#12181D", "cterm": "234" }
let s:color_col   = { "gui": "#384149", "cterm": "237" }

let s:selection   = { "gui": "#1E272F", "cterm": "239" }
let s:vertsplit   = { "gui": "#384149", "cterm": "237" }


function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun


" User interface colors {
call s:h("Normal", s:fg, s:bg, "")

call s:h("Cursor", s:bg, s:blue, "")
call s:h("CursorColumn", "", s:cursor_line, "")
call s:h("CursorLine", "", s:cursor_line, "")

call s:h("LineNr", s:num_col_fg, s:num_col_bg, "")
call s:h("CursorLineNr", s:fg, s:gutter_fg, "")

call s:h("DiffAdd", s:green, "", "")
call s:h("DiffChange", s:yellow, "", "")
call s:h("DiffDelete", s:red, "", "")
call s:h("DiffText", s:blue, "", "")

call s:h("IncSearch", s:bg, s:yellow, "")
call s:h("Search", s:bg, s:yellow, "")

call s:h("ErrorMsg", s:fg, "", "")
call s:h("ModeMsg", s:fg, "", "")
call s:h("MoreMsg", s:fg, "", "")
call s:h("WarningMsg", s:red, "", "")
call s:h("Question", s:purple, "", "")

call s:h("Pmenu", s:bg, s:fg, "")
call s:h("PmenuSel", s:fg, s:blue, "")
call s:h("PmenuSbar", "", s:selection, "")
call s:h("PmenuThumb", "", s:fg, "")

call s:h("SpellBad", s:red, "", "")
call s:h("SpellCap", s:yellow, "", "")
call s:h("SpellLocal", s:yellow, "", "")
call s:h("SpellRare", s:yellow, "", "")

call s:h("StatusLine", s:blue, s:bg, "")
call s:h("StatusLineNC", s:comment_fg, s:cursor_line, "")
call s:h("TabLine", s:comment_fg, s:cursor_line, "")
call s:h("TabLineFill", s:comment_fg, s:cursor_line, "")
call s:h("TabLineSel", s:fg, s:bg, "")

call s:h("Visual", "", s:selection, "")
call s:h("VisualNOS", "", s:selection, "")

call s:h("ColorColumn", "", s:color_col, "")
call s:h("Conceal", s:fg, "", "")
call s:h("Directory", s:blue, "", "")
call s:h("VertSplit", s:vertsplit, s:vertsplit, "")
call s:h("Folded", s:fg, "", "")
call s:h("FoldColumn", s:fg, "", "")
call s:h("SignColumn", s:fg, "", "")

call s:h("MatchParen", s:blue, "", "underline")
call s:h("SpecialKey", s:fg, "", "")
call s:h("Title", s:green, "", "")
call s:h("WildMenu", s:fg, "", "")
" }


" Syntax colors {
" Whitespace is defined in Neovim, not Vim.
" See :help hl-Whitespace and :help hl-SpecialKey
call s:h("Whitespae", s:non_text, "", "")
call s:h("NonText", s:non_text, "", "")
call s:h("Comment", s:comment_fg, "", "italic")
call s:h("Constant", s:cyan, "", "")
call s:h("String", s:green, "", "")
call s:h("Character", s:green, "", "")
call s:h("Number", s:yellow, "", "")
call s:h("Boolean", s:yellow, "", "")
call s:h("Float", s:yellow, "", "")

call s:h("Identifier", s:red, "", "")
call s:h("Function", s:blue, "", "")
call s:h("Statement", s:purple, "", "")

call s:h("Conditional", s:purple, "", "")
call s:h("Repeat", s:purple, "", "")
call s:h("Label", s:purple, "", "")
call s:h("Operator", s:fg, "", "")
call s:h("Keyword", s:red, "", "")
call s:h("Exception", s:purple, "", "")

call s:h("PreProc", s:yellow, "", "")
call s:h("Include", s:purple, "", "")
call s:h("Define", s:purple, "", "")
call s:h("Macro", s:purple, "", "")
call s:h("PreCondit", s:yellow, "", "")

call s:h("Type", s:yellow, "", "")
call s:h("StorageClass", s:yellow, "", "")
call s:h("Structure", s:yellow, "", "")
call s:h("Typedef", s:yellow, "", "")

call s:h("Special", s:blue, "", "")
call s:h("SpecialChar", s:fg, "", "")
call s:h("Tag", s:fg, "", "")
call s:h("Delimiter", s:fg, "", "")
call s:h("SpecialComment", s:fg, "", "")
call s:h("Debug", s:fg, "", "")
call s:h("Underlined", s:fg, "", "")
call s:h("Ignore", s:fg, "", "")
call s:h("Error", s:red, s:gutter_bg, "")
call s:h("Todo", s:purple, "", "")
" }


" --| Plugins |--

" GitGutter
call s:h("GitGutterAdd", s:green, s:gutter_bg, "")
call s:h("GitGutterDelete", s:red, s:gutter_bg, "")
call s:h("GitGutterChange", s:yellow, s:gutter_bg, "")
call s:h("GitGutterChangeDelete", s:red, s:gutter_bg, "")


" Fugitive
call s:h("diffAdded", s:green, "", "")
call s:h("diffRemoved", s:red, "", "")


" vim-pandoc/vim-pandoc-syntax
hi! link pandocAtxHeader markdownH1
hi! link pandocBlockQuote markdownBlockquote
hi! link pandocCiteAnchor Operator
hi! link pandocCiteKey pandocReferenceLabel
hi! link pandocDefinitionBlockMark Operator
hi! link pandocEmphasis markdownItalic
hi! link pandocFootnoteID pandocReferenceLabel
hi! link pandocFootnoteIDHead markdownLinkDelimiter
hi! link pandocFootnoteIDTail pandocFootnoteIDHead
hi! link pandocGridTableDelims pandocTableDelims
hi! link pandocGridTableHeader pandocTableDelims
hi! link pandocOperator Operator
hi! link pandocPipeTableDelims pandocTableDelims
hi! link pandocReferenceDefinition pandocReferenceLabel
hi! link pandocReferenceLabel markdownLinkText
hi! link pandocReferenceURL markdownUrl
hi! link pandocSimpleTableHeader pandocAtxHeader
hi! link pandocStrong markdownBold
hi! link pandocTableHeaderWord pandocAtxHeader
hi! link pandocUListItemBullet Operator


" vim-plug
call s:h("plugDeleted", s:red, "", "")

" Git
call s:h("gitcommitComment", s:comment_fg, "", "")
call s:h("gitcommitUnmerged", s:red, "", "")
call s:h("gitcommitOnBranch", s:fg, "", "")
call s:h("gitcommitBranch", s:purple, "", "")
call s:h("gitcommitDiscardedType", s:red, "", "")
call s:h("gitcommitSelectedType", s:green, "", "")
call s:h("gitcommitHeader", s:fg, "", "")
call s:h("gitcommitUntrackedFile", s:cyan, "", "")
call s:h("gitcommitDiscardedFile", s:red, "", "")
call s:h("gitcommitSelectedFile", s:green, "", "")
call s:h("gitcommitUnmergedFile", s:yellow, "", "")
call s:h("gitcommitFile", s:fg, "", "")
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile


  if has('nvim')
    " Fix colors in neovim terminal buffers
    let g:terminal_color_0 = s:black.gui
    let g:terminal_color_1 = s:red.gui
    let g:terminal_color_2 = s:green.gui
    let g:terminal_color_3 = s:yellow.gui
    let g:terminal_color_4 = s:blue.gui
    let g:terminal_color_5 = s:purple.gui
    let g:terminal_color_6 = s:cyan.gui
    let g:terminal_color_7 = s:white.gui
    let g:terminal_color_8 = s:black.gui
    let g:terminal_color_9 = s:red.gui
    let g:terminal_color_10 = s:green.gui
    let g:terminal_color_11 = s:yellow.gui
    let g:terminal_color_12 = s:blue.gui
    let g:terminal_color_13 = s:purple.gui
    let g:terminal_color_14 = s:cyan.gui
    let g:terminal_color_15 = s:white.gui
    let g:terminal_color_background = s:bg.gui
    let g:terminal_color_foreground = s:fg.gui

    " Treesitter Support
    call s:hi("Constructor", s:gui02, "", "", "", "", "")
    call s:hi("Emphasis", s:gui02, "", "", "", "", "")
    call s:hi("Field", s:gui0B, "", "", "", "", "")
    call s:hi("FunctionBuiltin", s:gui0D, "", "", "", "", "")
    call s:hi("FuncMacro", s:gui0E, "", "", "", "", "")
    call s:hi("Method", s:gui0B, "", "", "", "", "")
    call s:hi("Parameter", s:gui09, "", "", "", "", "")
    call s:hi("TypeBuiltin", s:gui0F, "", "", "", "", "")
    call s:hi("TreeSitterVariable", s:gui0B, "", "", "", "", "")
    hi! link TSAnnotation PreProc
    hi! link TSAttribute Decorator
    hi! link TSBoolean Boolean
    hi! link TSCharacter Character
    hi! link TSConditional Conditional
    hi! link TSConstant Constant
    hi! link TSConstBuiltin Structure
    hi! link TSConstructor Constructor
    hi! link TSEmphasis Emphasis
    hi! link TSError Error
    hi! link TSException Exception
    hi! link TSFloat Float
    hi! link TSField Field
    hi! link TSFunction Function
    hi! link TSFuncBuiltin FunctionBuiltin
    hi! link TSFuncMacro FuncMacro " FuncMacro is mostly used in rust
    hi! link TSKeyword Keyword
    hi! link TSKeywordFunction Function
    hi! link TSKeywordOperator Operator
    hi! link TSLabel Label
    hi! link TSLiteral Constant
    hi! link TSMethod Method
    hi! link TSNamespace Directory
    hi! link TSNumber Number
    hi! link TSOperator Operator
    hi! link TSParameter Parameter
    hi! link TSPunctBracket Delimiter
    hi! link TSPunctDelimiter Delimiter
    hi! link TSPunctSpecial DelimterAlt
    hi! link TSRepeat Repeat
    hi! link TSString String
    hi! link TSStringEscape SpecialKey
    hi! link TSStringRegex String
    hi! link TSStrong Bold
    hi! link TSStructure Structure
    hi! link TSTag Keyword
    hi! link TSTagDelimiter Delimiter
    hi! link TSText String
    hi! link TSType Type
    hi! link TSTypeBuiltin TypeBuiltin
    hi! link TSUnderline Underlined
    hi! link TSURI URL
    hi! link TSVariable Variable
    hi! link TSVariableBuiltin TreeSitterVariable
  endif
