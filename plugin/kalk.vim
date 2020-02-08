if exists('g:loaded_kalk')
  finish
endif

let g:loaded_kalk = 1

vnoremap <silent> <Plug>(kalk-visual-apply)  :<C-u>call kalk#apply_lambda_to_visual_area()<CR>
vnoremap <silent> <Plug>(kalk-visual-repeat) :<C-u>call kalk#repeat_lambda_to_visual_area()<CR>
