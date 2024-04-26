PROGRAM test
  INTEGER,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = 17
  a(1,2) = 19
  a(2,1) = 18
  a(2,2) = 20
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  INTEGER ,target :: a(:,:)
  integer:: b
  b = IPARITY(a)
  if(b.ne.4)print*,101
  end subroutine sub
END PROGRAM
