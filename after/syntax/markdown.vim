" YAML front matter
syntax match Comment /\%^---\_.\{-}---$/ contains=@Spell

" Match Liquid Tags and Filters
syntax match Statement /{[{%].*[}%]}/

" Match the Octopress Backtick Code Block line
syntax match Statement /^```.*$/
