  call sub01("a") 
  print *,"pass"
end 

subroutine sub01(chr01)
  character chr01(1)
  if (chr01(1) .ne. "a") print *,"err"
end subroutine
