function! SqlCleanFile()
   execute '%s/	/ /ge'
   execute '%s/  / /ge'
   execute '%s/,/,
   execute '%s/Inner Join/
   execute '%s/Left Join/
   execute '%s/SELECT/SELECT
   execute '%s/FROM/
   execute '%s/WHERE/
   execute '%s/GROUP BY/
   execute '%s/AND/
   execute 'retab'
   execute 'set ff=unix'
   execute '%s/
   execute '%s/\s\+$//e'
endfunction

command! SqlClean execute SqlCleanFile()