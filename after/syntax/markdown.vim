" YAML front matter
syntax match Comment /\%^---\_.\{-}---$/ contains=@Spell

" My unfinished attempt at getting YAML syntax in the front matter
" NOT WORKING
" syntax include @yaml $VIMRUNTIME/syntax/yaml.vim
" syntax region jekyllFrontMatter start=/\%^---/ end=/^---/ contains=@yaml

" Match Liquid Tags and Filters
syntax match liquidTag /{[{%].*[}%]}/

" Match the Octopress Backtick Code Block line
syntax match codeblockContents contained /^\(```\)\@!.*/
syntax region octoBacktickCodeBlockRegion start=/^```/ end=/^```/ contains=codeblockContents keepend

" Special handling for Octopress {% codeblock %}
" NOT WORKING
" syntax region octoCodeBlockRegion start=/{%\s*codeblock.*%}/ end=/{%\s*endcodeblock.*%}/ contains=codeblockContents keepend

hi def link codeblockContents									Ignore
hi def link jekyllFrontMatter									Comment
hi def link liquidTag													Statement
hi def link octoBacktickCodeBlockRegion				Statement
hi def link octoCodeBlockRegion								Statement
