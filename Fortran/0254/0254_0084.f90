PROGRAM test
  INTEGER(kind=8),allocatable :: x(:)
  INTEGER(kind=8),allocatable :: y(:)
  allocate(y(4))
  y(1) = 17
  y(2) = 19
  y(3) = 18
  y(4) = 20
  call sub(x,y)
  print*,"pass"

  contains
  subroutine sub(a,b)
  INTEGER(kind=8), allocatable :: a(:)
  INTEGER(kind=8) :: b(*)
  integer(kind=8):: xx
  allocate(a,source=b(:4))
  xx= IPARITY(a)
  if(xx.ne.4)print*,101
  end subroutine sub
END PROGRAM
