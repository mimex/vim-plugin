function! SqlCleanFile()
   execute '%s/	/ /ge'
   execute '%s/  / /ge'
   execute '%s/,/,/ge'
   execute '%s/Inner Join/	Inner Join/ge'
   execute '%s/Left Join/	Left Join/ge'
   execute '%s/SELECT/SELECT/ge'
   execute '%s/FROM/FROM/ge'
   execute '%s/WHERE/WHERE/ge'
   execute '%s/GROUP BY/GROUP BY/ge'
   execute '%s/AND/AND/ge'
   execute 'retab'
   execute 'set ff=unix'
   execute '%s///e'
   execute '%s/\s\+$//e'
endfunction

command! SqlClean execute SqlCleanFile()
