module mod
 type TAG
   integer,dimension(10,3)::x
 end type
end module
program main
use mod
type(TAG),dimension(10),target::a 
type(TAG),dimension(:),pointer::p
do i=1,10
  a(i)%x=0
enddo
p => a
call sub(p)
contains
subroutine sub(f)
type(TAG),pointer,dimension(:)::f
integer,dimension(3)::t1,t2
do i=1,10
  do j=1,10
    t1(:)=f(i)%x(j,:)+1
    t2(:)=f(i)%x(j,:)+1
  enddo
enddo
if (sum(t1+t2) == 6) then
  print *,"ok"
else
  print *,"ng"
endif
end subroutine
end 