" only write if needed and update the start time after the save
function! UpdateFile()
  if exists("b:start_time")
    if ((localtime() - b:start_time) >= 1)
      update
      let b:start_time=localtime()
    endif
  endif
endfunction
