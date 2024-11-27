  character,parameter :: cnt01 = "a"
  
  call sub01(cnt01) 
  print *,"pass"
end 

subroutine sub01(chr01)
  character chr01(1)
  if (chr01(1) .ne. "a") print *,"err"
end subroutine
