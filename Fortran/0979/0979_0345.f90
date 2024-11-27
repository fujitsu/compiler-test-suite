  character :: var_chr01
  var_chr01 = "a"
  
  call sub01(var_chr01) 
  print *,"pass"
end 

subroutine sub01(chr01)
  character chr01(1)
  if (chr01(1) .ne. "a") print *,"err"
end subroutine
