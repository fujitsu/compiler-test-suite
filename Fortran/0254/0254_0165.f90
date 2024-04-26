PROGRAM test
  REAL,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = 2
  a(1,2) = 3
  a(2,1) = 4
  a(2,2) = 5
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  REAL ,target :: a(:,:)
  REAL:: b
  b = NORM2(a)
  if(.not.(b<=7.4 .and. b>=7.3)) print*,101
  end subroutine sub
END PROGRAM
