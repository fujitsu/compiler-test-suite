  integer :: int01
  int01 = 1
  call sub01(int01) 
  print *,"pass"
end 

subroutine sub01(int01)
  integer :: int01
  if (int01 .ne. 1) print *,"err"
end subroutine
