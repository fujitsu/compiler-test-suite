module mod
 type TAG
   integer,dimension(100,100)::x
   integer,dimension(100,100)::y
 end type
end module
program main
use mod
type(TAG),dimension(1000),target::a 
type(TAG),dimension(:),pointer::p
p => a
call sub(p)
if ((a(1)%x(1,1) == 1).and.(a(1000)%y(100,100) == 1)) then
  print *,"ok"
else
  print *,"ng"
endif
contains
subroutine sub(f)
type(TAG),pointer,dimension(:)::f
do k=1,1000
  do i=1,100
    do j=1,100
      f(k)%x(i,j) = 1
      f(k)%y(i,j) = 1
    enddo
  enddo
enddo
end subroutine
end 
