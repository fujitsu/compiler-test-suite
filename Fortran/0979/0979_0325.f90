  call sub01("a","b","c") 
  print *,"pass"
end 

subroutine sub01(chr01,chr02,chr03)
  character :: chr01(1)
  character :: chr02
  character :: chr03(1)
  if (chr01(1) .ne. "a") print *,"err"
  if (chr02 .ne. "b") print *,"err"
  if (chr03(1) .ne. "c") print *,"err"
end subroutine
