PROGRAM test
  INTEGER(kind=2),allocatable :: a(:,:)
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
  INTEGER(kind=2) :: a(2,*)
  integer:: b
  b = IANY(a(:,2))
  if(b.ne.23)print*,101
  end subroutine sub
END PROGRAM
