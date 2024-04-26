PROGRAM test
  INTEGER,allocatable :: x(:,:)
  INTEGER,allocatable :: y(:,:)
  INTEGER,allocatable :: d1,rslt(:)
  LOGICAL,allocatable :: m(:,:)
  allocate(y(3,3),d1,m(3,3),rslt(3))
  d1=2
  y=3
  y(1,1)=17
  y(1,2)=18
  y(2,1)=17
  y(2,3)=19
  y(3,2)=20
  y(3,3)=19

  m=.true.
  m(1,3)=.false.
  m(2,2)=.false.
  m(3,1)=.false.

  call sub(x,y,d1,m,rslt)
  print*,"pass"

  contains
  subroutine sub(a,b,d,msk,xx)
  INTEGER, allocatable :: a(:,:)
  INTEGER :: b(:,:),d
  LOGICAL :: msk(:,:)
  integer :: xx(:)
  allocate(a,source=b)
  xx= IPARITY(mask=msk,dim=d,array=a)
  if(xx(1).ne.3)print*,101
  if(xx(2).ne.2)print*,102
  if(xx(3).ne.7)print*,103
  end subroutine sub
END PROGRAM
