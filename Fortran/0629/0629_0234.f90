program main
type TAG
  integer,dimension(100,100)::x
end type
type(TAG),dimension(1000),target::a 
type(TAG),dimension(:),pointer::p
p => a
call sub(p)
print*,p(1000)%x(100,100)
contains
subroutine sub(f)
type(TAG),pointer,dimension(:)::f
do i=1,1000
  f(i)%x = i
enddo
end subroutine
end 
