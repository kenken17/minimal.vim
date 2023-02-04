" minimal.vim - Minimal theme for vim
" Author:  ken <kenken17@gmail.com>
" Version: 1.0.0
" License: MIT

set background=dark

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'minimal'

let s:italic            = 'italic'
let s:bold              = 'bold'
let s:underline         = 'underline'
let s:none              = 'NONE'

let s:color_bg          = ['#000000', 0]
let s:color_fg          = ['#949494', 246]
let s:color_column      = ['#121212', 233]
let s:color_lvl_0       = ['#3a3a3a', 237]
let s:color_lvl_1       = ['#808080', 244]
let s:color_lvl_2       = ['#a8a8a8', 248]
let s:color_lvl_3       = ['#c6c6c6', 251]
let s:color_lvl_4       = ['#eeeeee', 255]
let s:color_lvl_5       = ['#ffffff', 231]
let s:color_float       = ['#3a3a3a', 237]
let s:color_highlight   = ['#afd700', 148]
let s:color_selection   = ['#c6c6c6', 251]
let s:color_error       = ['#d70000', 160]
let s:color_comment     = ['#5f8700', 64]
let s:color_none        = [s:none, s:none]

let s:default_fg        = s:color_fg
let s:default_bg        = s:color_bg

let s:default_lst       = []
let s:default_str       = ''

function! s:hi(...)
  let group = a:1
  let fg    = get(a:, 2, s:default_fg)
  let bg    = get(a:, 3, s:default_bg)
  let attr  = get(a:, 4, s:default_str)

  let cmd = ['highlight', group]

  if fg != s:default_lst
    call add(cmd, 'guifg='.fg[0])
    call add(cmd, 'ctermfg='.fg[1])
  endif

  if bg != s:default_lst
    call add(cmd, 'guibg='.bg[0])
    call add(cmd, 'ctermbg='.bg[1])
  endif

  if attr != s:default_str
    call add(cmd, 'gui='.attr)
    call add(cmd, 'cterm='.attr)
  endif

  exec join(cmd, ' ')
endfunction


" vim interface
call s:hi("ColorColumn", s:color_none, s:color_column)
" call s:hi("Conceal", s:color_fg, s:color_none)
call s:hi("Cursor", s:color_highlight, s:color_none)
" call s:hi("CursorIM", s:color_fg, s:color_none)
call s:hi("CursorColumn", s:color_lvl_5, s:color_lvl_0)
call s:hi("CursorLine", s:color_none, s:color_none)
call s:hi("Directory", s:color_lvl_2, s:color_none)
call s:hi("DiffAdd", s:color_lvl_0, s:color_highlight)
call s:hi("DiffChange", s:color_lvl_4, s:color_none)
call s:hi("DiffDelete", s:color_lvl_4, s:color_error)
call s:hi("DiffText", s:color_lvl_0, s:color_highlight)
call s:hi("EndOfBuffer", s:color_fg, s:color_none)
call s:hi("ErrorMsg", s:color_error, s:color_none)
call s:hi("VertSplit", s:color_lvl_0, s:color_none)
call s:hi("Folded", s:color_lvl_2, s:color_lvl_0)
call s:hi("FoldColumn", s:color_lvl_2, s:color_lvl_0)
call s:hi("SignColumn", s:color_lvl_0, s:color_lvl_1)
call s:hi("IncSearch", s:color_highlight, s:color_bg)
call s:hi("LineNr", s:color_lvl_1, s:color_none)
call s:hi("CursorLineNr", s:color_highlight, s:color_none)
call s:hi("MatchParen", s:color_lvl_4, s:color_lvl_0)
call s:hi("ModeMsg", s:color_lvl_3, s:color_none)
call s:hi("MoreMsg", s:color_lvl_3, s:color_none)
call s:hi("NonText", s:color_lvl_3, s:color_none)
call s:hi("Normal", s:color_fg, s:color_none)
call s:hi("Pmenu", s:color_lvl_2, s:color_lvl_0)
call s:hi("PmenuSel", s:color_none, s:color_lvl_4)
call s:hi("PmenuSbar", s:color_fg, s:color_lvl_1)
call s:hi("PmenuThumb", s:color_fg, s:color_lvl_4)
call s:hi("Question", s:color_lvl_3, s:color_none)
call s:hi("QuickFixLine", s:color_none, s:color_none)
call s:hi("qfFileName", s:color_lvl_4, s:color_none)
call s:hi("qfLineNr", s:color_highlight, s:color_none)
" call s:hi("qfSeparator", s:color_error, s:color_none)
call s:hi("Search", s:color_lvl_5, s:color_lvl_1)
call s:hi("SpecialKey", s:color_lvl_3, s:color_none)
call s:hi("SpellBad", s:color_none, s:color_error)
call s:hi("SpellCap", s:color_none, s:color_error)
call s:hi("SpellLocal", s:color_none, s:color_error)
call s:hi("SpellRare", s:color_none, s:color_error)
" call s:hi("StatusLine", s:color_fg, s:color_none)
" call s:hi("StatusLineNC", s:color_fg, s:color_none)
" call s:hi("StatusLineTerm", s:color_fg, s:color_none)
" call s:hi("StatusLineTermNC", s:color_fg, s:color_none)
call s:hi("TabLine", s:color_lvl_2, s:color_none)
call s:hi("TabLineFill", s:color_fg, s:color_none)
call s:hi("TabLineSel", s:color_lvl_0, s:color_highlight)
call s:hi("Terminal", s:color_fg, s:color_none)
call s:hi("Title", s:color_fg, s:color_none)
call s:hi("Visual", s:color_lvl_0, s:color_selection)
call s:hi("VisualNOS", s:color_lvl_0, s:color_selection)
call s:hi("WarningMsg", s:color_error, s:color_none)
call s:hi("WildMenu", s:color_lvl_0, s:color_highlight)
" call s:hi("Menu", s:color_fg, s:color_none)
" call s:hi("Scrollbar", s:color_fg, s:color_none)
" call s:hi("Tooltip", s:color_fg, s:color_none)

" syntax
" keywords should take lesser priority
call s:hi("Identifier", s:color_lvl_1, s:color_none)
call s:hi("Function", s:color_lvl_1, s:color_none)
call s:hi("Statement", s:color_lvl_1, s:color_none)
call s:hi("Conditional", s:color_lvl_1, s:color_none)
call s:hi("Repeat", s:color_lvl_1, s:color_none)
call s:hi("Label", s:color_lvl_1, s:color_none)
call s:hi("Operator", s:color_lvl_1, s:color_none)
call s:hi("Keyword", s:color_lvl_1, s:color_none)

call s:hi("Type", s:color_lvl_2, s:color_none)
call s:hi("StorageClass", s:color_lvl_2, s:color_none)
call s:hi("Structure", s:color_lvl_2, s:color_none)
call s:hi("Typedef", s:color_lvl_2, s:color_none)

call s:hi("Exception", s:color_highlight, s:color_none)
call s:hi("PreProc", s:color_highlight, s:color_none)
call s:hi("Include", s:color_highlight, s:color_none)
call s:hi("Define", s:color_highlight, s:color_none)
call s:hi("Macro", s:color_highlight, s:color_none)
call s:hi("PreCondit", s:color_highlight, s:color_none)

call s:hi("Special", s:color_highlight, s:color_none)
call s:hi("SpecialChar", s:color_highlight, s:color_none)
call s:hi("Tag", s:color_highlight, s:color_none)
call s:hi("Delimiter", s:color_highlight, s:color_none)
call s:hi("SpecialComment", s:color_highlight, s:color_none)
call s:hi("Debug", s:color_highlight, s:color_none)

call s:hi("Comment", s:color_comment, s:color_none)

call s:hi("Constant", s:color_lvl_4, s:color_none)
call s:hi("String", s:color_lvl_4, s:color_none)
call s:hi("Character", s:color_lvl_4, s:color_none)
call s:hi("Number", s:color_lvl_4, s:color_none)
call s:hi("Boolean", s:color_lvl_4, s:color_none)
call s:hi("Float", s:color_lvl_4, s:color_none)

call s:hi("Todo", s:color_highlight, s:color_none)

" Plugin overwrite
" ------------------

" NERDTree
call s:hi("NERDTreeCWD", s:color_error, s:color_none)
call s:hi("NERDTreeDir", s:color_lvl_3, s:color_none)
call s:hi("NERDTreeDirSlash", s:color_highlight, s:color_none)
call s:hi("NERDTreeOpenable", s:color_lvl_5, s:color_none)
call s:hi("NERDTreeClosable", s:color_lvl_5, s:color_none)
call s:hi("NERDTreeLinkFile", s:color_lvl_5, s:color_none)
call s:hi("NERDTreeLinkDir", s:color_lvl_5, s:color_none)

" PhilRunninger/nerdtree-buffer-ops
call s:hi("NERDTreeOpenBuffer", s:color_highlight, s:color_none)

"ALE
call s:hi("ALEErrorSign", s:color_error, s:color_none)
call s:hi("ALEWarningSign", s:color_lvl_4, s:color_none)
call s:hi("SignColumn", s:color_none, s:color_none)

" Agit
call s:hi("agitStatAdded", s:color_highlight, s:color_none)
call s:hi("agitStatRemoved", s:color_error, s:color_none)
call s:hi("agitDiffAdd", s:color_highlight, s:color_none)
call s:hi("agitDiffRemove", s:color_error, s:color_none)
call s:hi("agitDiffHeader", s:color_lvl_0, s:color_selection)
call s:hi("agitDiffFileName", s:color_lvl_4, s:color_none)
call s:hi("agitHead", s:color_error, s:color_lvl_5)
call s:hi("agitRemote", s:color_lvl_4, s:color_none)
call s:hi("agitTag", s:color_lvl_4, s:color_none)
call s:hi("agitRef", s:color_highlight, s:color_none)

" Language overwrtie
" --------------------

" Vim
call s:hi("vimCommand", s:color_lvl_4, s:color_none)
call s:hi("vimOption", s:color_highlight, s:color_none)

" JS
" pangloss/vim-javascript
call s:hi("jsNoise", s:color_lvl_4, s:color_none)
call s:hi("jsOperator", s:color_lvl_4, s:color_none)
call s:hi("jsParensError", s:color_error, s:color_none)

call s:hi("jsVariableDef", s:color_lvl_3, s:color_none)
call s:hi("jsFuncCall", s:color_lvl_5, s:color_none)
call s:hi("jsFuncName", s:color_lvl_4, s:color_none)
call s:hi("jsFuncArgs", s:color_lvl_3, s:color_none)
call s:hi("jsFuncParens", s:color_highlight, s:color_none)
call s:hi("jsFuncBraces", s:color_highlight, s:color_none)
call s:hi("jsArrowFunction", s:color_highlight, s:color_none)

call s:hi("jsObjectProp", s:color_lvl_3, s:color_none)
call s:hi("jsObjectKey", s:color_highlight, s:color_none)
call s:hi("jsObjectColon", s:color_lvl_2, s:color_none)
call s:hi("jsObjectFuncName", s:color_highlight, s:color_none)

call s:hi("jsNull", s:color_lvl_5, s:color_none)
call s:hi("jsThis", s:color_lvl_3, s:color_none)
call s:hi("jsUndefined", s:color_error, s:color_none)
call s:hi("jsReturn", s:color_lvl_3, s:color_none)

call s:hi("jsDocTags", s:color_lvl_2, s:color_none)
call s:hi("jsDocType", s:color_lvl_3, s:color_none)
call s:hi("jsDocParam", s:color_lvl_4, s:color_none)

" CSS
call s:hi("cssClassName", s:color_lvl_5, s:color_none)
call s:hi("cssIdentifier", s:color_highlight, s:color_none)
call s:hi("cssTagName", s:color_lvl_3, s:color_none)
call s:hi("cssProp", s:color_lvl_2, s:color_none)

" Python
call s:hi("pythonStatement", s:color_highlight, s:color_none)
call s:hi("pythonFunction", s:color_lvl_5, s:color_none)
call s:hi("pythonDecoratorName", s:color_lvl_5, s:color_none)
call s:hi("pythonNumber", s:color_lvl_4, s:color_none)
call s:hi("pythonOperator", s:color_lvl_4, s:color_none)

"SCSS/SASS
call s:hi("scssComment", s:color_comment, s:color_none)
call s:hi("scssVariable", s:color_highlight, s:color_none)
call s:hi("scssProperty", s:color_lvl_3, s:color_none)
call s:hi("cssImportant", s:color_error, s:color_none)
call s:hi("cssDefault", s:color_error, s:color_none)
call s:hi("sassComment", s:color_comment, s:color_none)

" JSON
call s:hi("jsonKeyword", s:color_highlight, s:color_none)

" Java
call s:hi("javaTop", s:color_error, s:color_none)
call s:hi("javaTypedef", s:color_lvl_3, s:color_none)
call s:hi("javaScopeDecl", s:color_highlight, s:color_none)
call s:hi("javaOperator", s:color_lvl_4, s:color_none)
call s:hi("javaMethodDecl", s:color_highlight, s:color_none)
call s:hi("javaType", s:color_lvl_4, s:color_none)
call s:hi("javaParen1", s:color_lvl_3, s:color_none)
call s:hi("javaParen2", s:color_lvl_1, s:color_none)

" COC
call s:hi("CocMenuSel", s:color_highlight, s:color_lvl_1)
call s:hi("CocListSearch", s:color_highlight, s:color_none)
call s:hi("CocListLine", s:color_lvl_0, s:color_selection)

" Markdown
call s:hi("htmlLink", s:color_lvl_3, s:color_none)
call s:hi("markdownUrl", s:color_highlight, s:color_none)
call s:hi("htmlBold", s:color_lvl_4, s:color_none)
call s:hi("htmlH1", s:color_lvl_4, s:color_none)
call s:hi("htmlH2", s:color_lvl_4, s:color_none)
call s:hi("htmlH3", s:color_lvl_4, s:color_none)
call s:hi("htmlH4", s:color_lvl_4, s:color_none)
call s:hi("htmlH5", s:color_lvl_4, s:color_none)
call s:hi("htmlH6", s:color_lvl_4, s:color_none)

" Todo
call s:hi("vimTodoListsImportant", s:color_highlight, s:color_none)
call s:hi("vimTodoListsDone", s:color_comment, s:color_none)
call s:hi("vimTodoListsNormal", s:color_lvl_2, s:color_none)

" kamykn/spelunker.vim
call s:hi("SpelunkerSpellBad", s:color_lvl_5, s:color_error)
call s:hi("SpelunkerComplexOrCompoundWord", s:color_lvl_5, s:color_error)

" junegunn/vim-plug
call s:hi("plug2", s:color_lvl_4, s:color_none)
call s:hi("plugNumber", s:color_highlight, s:color_none)
call s:hi("plugMessage", s:color_highlight, s:color_none)
call s:hi("plugName", s:color_lvl_4, s:color_none)
call s:hi("plugInstall", s:color_highlight, s:color_none)
call s:hi("plugUpdate", s:color_highlight, s:color_none)
call s:hi("plugDeleted", s:color_lvl_4, s:color_none)

" plasticboy/vim-markdown
call s:hi("mkdLink", s:color_highlight, s:color_none)
call s:hi("mkdURL", s:color_highlight, s:color_none)
call s:hi("mkdInlineURL", s:color_highlight, s:color_none)
call s:hi("mkdListItem", s:color_highlight, s:color_none)
call s:hi("mkdBlockquote", s:color_lvl_5, s:color_none)

" dyng/ctrlsf.vim
call s:hi("ctrlsfMatch", s:color_lvl_0, s:color_selection)
call s:hi("ctrlsfFilename", s:color_highlight, s:color_none)
call s:hi("ctrlsfLnumMatch", s:color_highlight, s:color_none)
call s:hi("ctrlsfSearchDone", s:color_highlight, s:color_none)

" mhinz/vim-startify
call s:hi("startifySection", s:color_highlight, s:color_none)

" Cucumber
call s:hi("cucumberTags", s:color_highlight, s:color_none)
call s:hi("cucumberFeature", s:color_lvl_3, s:color_none)
call s:hi("cucumberScenario", s:color_lvl_3, s:color_none)
call s:hi("cucumberScenarioOutline", s:color_lvl_3, s:color_none)
call s:hi("cucumberExamples", s:color_highlight, s:color_none)
call s:hi("cucumberGiven", s:color_lvl_4, s:color_none)
call s:hi("cucumberWhen", s:color_lvl_4, s:color_none)
call s:hi("cucumberThen", s:color_lvl_4, s:color_none)

" tpope/vim-fugitive
call s:hi("fugitiveHelpTag", s:color_fg, s:color_none)
call s:hi("fugitiveSymbolicRef", s:color_highlight, s:color_none)
call s:hi("fugitiveUnstagedModifier", s:color_lvl_3, s:color_none)
call s:hi("fugitiveUntrackedModifier", s:color_lvl_3, s:color_none)
call s:hi("fugitiveStagedModifier", s:color_lvl_3, s:color_none)
call s:hi("fugitiveUntrackedHeading", s:color_error, s:color_none)
call s:hi("fugitiveUnstagedHeading", s:color_error, s:color_none)
call s:hi("fugitiveHash", s:color_lvl_4, s:color_none)

" syntax/diff.vim
call s:hi("diffRemoved", s:color_error, s:color_none)
call s:hi("diffAdded", s:color_highlight, s:color_none)
call s:hi("diffChanged", s:color_lvl_4, s:color_none)

" for airline inactive mode
let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
  for colors in values(a:palette.inactive)
    " The colors array has the following elements:
    "   [guifg, guibg, ctermfg, ctermbg, opts]
    " Using '' should get them back to the default values.
    let colors[0] = '#c6c6c6'
    let colors[2] = '251'
  endfor
endfunction

" vim:set ft=vim sw=2 sts=2 et:
