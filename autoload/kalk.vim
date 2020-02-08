let g:default_lambda_body = 'x'

function! kalk#apply_lambda_to_visual_area() abort
  let tmp = @@
  silent normal gvy
  let visual_area = @@

  let lambda_body = input('The way to convert ' . visual_area . ': x -> ', g:default_lambda_body)
  let g:default_lambda_body = lambda_body
  let lambda_expr = '{ x -> ' . lambda_body . ' }'
  let Lambda = eval(lambda_expr)
  let retval = Lambda(eval(visual_area))
  let return_str = string(retval)

  let @@ = return_str
  silent normal gvp
  let @@ = tmp
endfunction

function! kalk#repeat_lambda_to_visual_area() abort
  let tmp = @@
  silent normal gvy
  let visual_area = @@

  let lambda_body = g:default_lambda_body
  let lambda_expr = '{ x -> ' . lambda_body . ' }'
  let Lambda = eval(lambda_expr)
  let retval = Lambda(eval(visual_area))
  let return_str = string(retval)

  let @@ = return_str
  silent normal gvp
  let @@ = tmp
endfunction
