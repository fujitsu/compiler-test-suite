PROGRAM test
  implicit none
  interface
    subroutine sub(d1,d2)
      REAL(8),intent(in) :: d1(2,2)
      REAL(8),intent(out) :: d2(2)
    end subroutine sub
  end interface
  REAL(8) :: a(2,2)
  REAL(8) :: b(2)
  a(1,1) = 3.0
  a(1,2) = 2.0
  a(2,1) = 4.0
  a(2,2) = 5.0
  call sub(a,b)
END PROGRAM
subroutine sub(d1,d2)
  REAL(8),intent(in) :: d1(2,2)
  REAL(8),intent(out) :: d2(2)

  d2 = NORM2(d1,1)
  if(.not.(d2(1)<=5.1 .and. d2(1)>=4.9)) print*,101
  if(.not.(d2(2)<=5.4 .and. d2(2)>=5.2)) print*,102
  print*,"pass"
end subroutine
