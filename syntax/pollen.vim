" Vim syntax file
" File:         pollen.vim
" Language:	    Pollen (a Racket language)
" URL:          https://github.com/otherjoel/vim-pollen
" Author:       Joel Dueck <joel@jdueck.net>
"
" Examine the github repo for revision info/dates
" Suggestions, bug reports, and fixes/pull requests welcome 
"
" With thanks to those who have contributed to scheme.vim, racket.vim, and scribble.vim
"

" Initializing:
if version < 700
  syntax clear
  finish
elseif exists("b:current_syntax")
  finish
endif

" Pollen is a Racket language
syntax include @SchemeBase syntax/racket.vim

" Highlighting for the #lang line is pretty strict.
" Match either #lang pollen OR #lang pollen/mode <reader>
" Must be first line in file.
syntax match langLine /\%^#lang pollen\%($\|\/pre$\|\/markup$\|\/markdown$\|\/ptree$\|\/mode\s\+.\+$\)/ 

" (require pollen/core)
syntax keyword PollenFunc define-meta @ when/splice get-doc get-metas            nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc select select* select-from-doc select-from-metas       nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/cache)
syntax keyword PollenFunc cached-doc cached-metas reset-cache                    nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/decode)
syntax keyword PollenFunc decode decode-elements block-txexpr?                   nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc merge-newlines decode-linebreaks decode-paragraphs     nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/file)
syntax keyword PollenFunc preproc-source? markup-source? markdown-source?        nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc null-source? scribble-source? pagetree-source?         nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc ->preproc-source-path ->markup-source-path             nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc ->markdown-source-path ->null-source-path              nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc ->scribble-source-path get-source get-markup-source    nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc get-markdown-source get-preproc-source get-null-source nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc get-scribble-source ->output-path                      nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/pagetree)
syntax keyword PollenFunc pagetree? validate-pagetree pagenode? pagenodeish?     nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc ->pagenode current-pagetree parent children siblings   nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc other-siblings previous previous* next next*           nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc get-pagetree pagetree->list in-pagetree? path-pagenode nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/render)
syntax keyword PollenFunc render render-to-file render-to-file-if-needed         nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc render-batch render-pagenodes get-template-for         nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
 
" (require pollen/setup)
syntax keyword PollenFunc setup:project-server-port default-project-server-port  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:main-export default-main-export                  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:meta-export default-meta-export                  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:extension-escape-char default-extension-escape-char nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:preproc-source-ext default-preproc-source-ext    nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:markup-source-ext default-markup-source-ext      nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:markdown-source-ext default-markdown-source-ext  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:null-source-ext default-null-source-ext          nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:pagetree-source-ext default-pagetree-source-ext  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:template-source-ext default-template-source-ext  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:scribble-source-ext default-scribble-source-ext  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:main-pagetree default-main-pagetree              nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:main-root-node default-main-root-node            nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:block-tags default-block-tags                    nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:command-char default-command-char                nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:template-prefix default-template-prefix          nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:newline default-newline                          nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:linebreak-separator default-linebreak-separator  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:paragraph-separator default-paragraph-separator  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:render-cache-active default-render-cache-active  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:compile-cache-active default-compile-cache-active nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:compile-cache-max-size default-compile-cache-max-size nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:publish-directory default-publish-directory      nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:unpublished-path? default-unpublished-path?      nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:omitted-path? default-omitted-path?              nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:extra-published-path? default-extra-published-path? nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:extra-path? default-extra-path?                  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:splicing-tag default-splicing-tag                nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:poly-source-ext default-poly-source-ext          nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:poly-targets default-poly-targets                nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc setup:index-pages default-index-pages                  nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase
syntax keyword PollenFunc current-server-port current-project-root               nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase 
syntax keyword PollenFunc current-server-extras-path current-poly-target         nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/tag)
syntax keyword PollenFunc default-tag-function define-tag-function               nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

" (require pollen/template)
syntax keyword PollenFunc ->html nextgroup=polBrackRange,polBraceRange contained containedin=@SchemeBase

syntax region polRacketRange matchgroup=Delimiter start="(" end=")" contains=@SchemeBase,PollenFunc,polExprStart
syntax region polBrackRange  matchgroup=Delimiter start="\[" end="\]" containedin=@SchemeBase contains=@SchemeBase contained nextgroup=polBraceRange
syntax region polBraceRange  matchgroup=Delimiter start="{" end="}" contains=polExprStart,polComment,polMultilineComment,@Spell contained
syntax region polVarRange    matchgroup=Delimiter start="|" end="|" contains=polIdentifier contained
syntax region polStringExpr start='"' end='"' contained
syntax match polIdentifier /[-<a-z!$%&*\/:<=>?^_~0-9+.@>]\+/ nextgroup=polBraceRange,polBrackRange contained

" ◊; that is not followed by { matches to end of line
syntax match polComment /◊;\({\)\@!.*/
syntax region polMultilineComment start='◊;{' end='}' contains=polMultilineInnerBraces
" Multiline comment highlighting will include inner ranges of braces as long
" as the outermost pair is matched (this is a difference from how the actual
" Pollen reader works -- in practice ALL braces must be matched!)
syntax match polMultilineInnerBraces /{.*}/ contained

" ◊ that is not followed by ; starts a Pollen expression
syntax match polExprStart "◊\(;\)\@!" nextgroup=PollenFunc,polRacketRange,polBrackRange,polBraceRange,polStringExpr,polIdentifier,polVarRange containedin=@SchemeBase

highlight Constant gui=italic cterm=italic

command -nargs=+ HiLink highlight def link <args>
HiLink langLine            Constant
HiLink polComment          Comment
HiLink polMultilineComment Comment
HiLink polMultilineInnerBraces Comment
HiLink polExprStart        Special
HiLink polStringExpr       String
HiLink polIdentifier       Identifier
HiLink PollenFunc          Function
delcommand HiLink

syn spell toplevel

let b:current_syntax = "pollen"
