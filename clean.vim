function! CleanFile()
   execute 'retab'
   execute 'set ff=unix'
   execute '%s///e'
   execute '%s/\s\+$//e'
endfunction

command! Clean execute CleanFile()
