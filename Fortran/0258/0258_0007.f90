PROGRAM test
  LOGICAL(kind=8),allocatable :: x(:)
  LOGICAL(kind=8),allocatable :: y(:)
  allocate(y(4))
  y(1) = .TRUE.
  y(2) = .FALSE.
  y(3) = .FALSE.
  y(4) = .TRUE.
  call sub(x,y)
  print*,"pass"

  contains
  subroutine sub(a,b)
  LOGICAL(kind=8), allocatable :: a(:)
  LOGICAL(kind=8) :: b(*)
  LOGICAL(kind=8):: xx
  allocate(a,source=b(:4))
  xx = PARITY(a)
  if(xx.neqv. .FALSE.)print*,101
  end subroutine sub
END PROGRAM
