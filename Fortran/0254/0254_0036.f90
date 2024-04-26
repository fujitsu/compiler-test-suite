PROGRAM test
  INTEGER :: a(2,2)
  integer:: b(2)
  a(1,1) = 3
  a(1,2) = 1
  a(2,1) = 11
  a(2,2) = 3
  call sub(a,b)
  print*,"pass"
contains
subroutine sub(d1,d2)
  INTEGER,intent(in) :: d1(2,2)
  integer,intent(out) :: d2(2)

  d2 = IALL(d1,2,d1>2)
  if(d2(1).ne.3)print*,101
  if(d2(2).ne.3)print*,102
end subroutine
END PROGRAM
