" YAML front matter
" Courtesy http://www.codeography.com/2010/02/20/making-vim-play-nice-with-jekylls-yaml-front-matter.html
syntax match Comment /\%^---\_.\{-}---$/ contains=@Spell

" Match Liquid Tags and Filters
syntax match Statement /{[{%].*[}%]}/
