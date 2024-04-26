PROGRAM test
  LOGICAL,allocatable :: x(:,:)
  LOGICAL,allocatable :: y(:,:)
  LOGICAL,allocatable :: rslt(:)
  INTEGER,allocatable :: d1
  LOGICAL,allocatable :: m(:,:)
  allocate(y(3,3),d1,m(3,3),rslt(3))
  d1=1
  y=.FALSE.
  y(1,1)=.TRUE.
  y(1,2)=.FALSE.
  y(2,1)=.TRUE.
  y(2,3)=.FALSE.
  y(3,2)=.TRUE.
  y(3,3)=.FALSE.


  call sub(x,y,d1,rslt)
  print*,"pass"

  contains
  subroutine sub(a,b,d,xx)
  LOGICAL, allocatable :: a(:,:)
  LOGICAL :: b(:,:)
  LOGICAL :: xx(:)
  integer :: d
  allocate(a,source=b)
  xx= PARITY(mask=a,dim=d)
  if(xx(1).neqv. .FALSE.)print*,101
  if(xx(2).neqv. .TRUE.)print*,102
  if(xx(3).neqv. .FALSE.)print*,103
  end subroutine sub
END PROGRAM
