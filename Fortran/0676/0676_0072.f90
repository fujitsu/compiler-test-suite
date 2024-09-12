module mod
 type TAG
   integer,dimension(10,10)::x
   integer,dimension(10,10)::y
 end type
end module
program main
use mod
type(TAG),dimension(10),target::a 
type(TAG),dimension(:),pointer::p
p => a
call sub(p)
if (a(1)%x(2,2)+a(1)%y(2,2)==2) then
  print *,"ok"
else
  print *,"ng"
endif
contains
subroutine sub(f)
type(TAG),pointer,dimension(:)::f
do i=1,10
  do j=1,10
    f(1)%x(i,j) = 1
    f(1)%y(i,j) = 1
  enddo
enddo
end subroutine
end 
