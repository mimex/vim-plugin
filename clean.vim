function! CleanFile()
   execute 'retab'
   execute 'set ff=unix'
   execute '%s/
   execute '%s/\s\+$//e'
endfunction

command! Clean execute CleanFile()