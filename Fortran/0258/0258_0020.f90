PROGRAM test
  LOGICAL :: a(2,2)
  LOGICAL :: b(2)
  a(1,1) = .TRUE.
  a(1,2) = .FALSE.
  a(2,1) = .TRUE.
  a(2,2) = .TRUE.
  call sub(a,b)
  print*,"pass"
contains
subroutine sub(d1,d2)
  LOGICAL,intent(in) :: d1(2,2)
  LOGICAL,intent(out) :: d2(2)

  d2 = PARITY(d1,2)
  if(d2(1).neqv. .TRUE.)print*,101
  if(d2(2).neqv. .FALSE.)print*,102
end subroutine
END PROGRAM
