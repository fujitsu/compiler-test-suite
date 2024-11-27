  call esub01("a") 
  print *,"pass"
end 

subroutine sub01()
entry esub01(chr01)
  character chr01(1)
  if (chr01(1) .ne. "a") print *,"err"
end subroutine
