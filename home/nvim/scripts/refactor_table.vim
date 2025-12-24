function! FillDictionary(keys)
  let l:dictionary = {}
  let l:ret_pattern = ".\\ze,\\|\\n"
  for i in a:keys
    let l:dictionary[i] = ''
    try
      execute "norm! gg/" . i . "=./e\r"
      execute "norm! v/" . l:ret_pattern . "\ry"
      let l:dictionary[i] = @"
    catch
    endtry
  endfor
  return l:dictionary
endfunction

function! RefactorDictionary(keys)
  let l:dictionary = FillDictionary(a:keys)
  let l:output = ""
  let l:first = 1
  for i in a:keys
    if l:first ==# 1
      let l:first = 0
    else
      let l:output = l:output . "\n"
    endif
    let l:output = l:output . i . "=" . l:dictionary[i] . ","
  endfor
  return l:output
endfunction
