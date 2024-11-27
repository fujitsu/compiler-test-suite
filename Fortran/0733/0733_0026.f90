module mm
 type x
   real xx
 end type
contains
subroutine sub01(s,d)
real(kind=8),dimension(:,:),intent(inout) :: s
real(kind=8) d
s(:,:) = (1.0_8 - d ) * s(:,:)
end subroutine
subroutine sub02(s,d)
character*2,dimension(:,:),intent(inout) :: s
character d
s(:,:) = d //s(:,:)
end subroutine
subroutine sub03(s)
type(x),dimension(:,:),intent(inout) :: s
s(:,:) = s(:,:)
end subroutine
end
program main
use mm
integer,parameter ::n=1
real(kind=8),dimension(:,:,:),allocatable :: sx
character*2,dimension(:,:,:),allocatable :: sy
type(x),dimension(:,:,:),allocatable :: sz
real(kind=8) dx
character    dy
dx = 0.9
dy='xy'
allocate(sx(3,3,n),sy(3,3,n),sz(3,3,n))
sx = 2._8
sy = 'a'
sz=x(2.)
call sub01(sx(:,:,n),dx)
call sub02(sy(:,:,n),dy)
call sub03(sz(:,:,n))
if (any(abs(sx-0.2000000476837158)>0.00001))print *,'error-1'
if (any(    sy/='xa'                      ))print *,'error-2'
if (any(abs(sz%xx-2.0)>0.00001               ))print *,'error-3'
print *,'pass'
end program main
