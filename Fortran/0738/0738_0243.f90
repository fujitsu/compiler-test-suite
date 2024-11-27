type y
integer,allocatable,dimension(:)::ya
integer            ,dimension(2)::yi
end type
type(y)::yy1
type(y),allocatable,dimension(:)::yy2

type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a

  allocate(yy1%ya(2))
  yy1%ya=(/1,2/)
  a=x(yy1%ya)
  call sub(1)

  yy1%yi=(/2,3/)
  a=x(yy1%yi)
  call sub(2)

  allocate(yy2(1))
  allocate(yy2(1)%ya(2))
  yy2(1)%ya=(/3,4/)
  a=x(yy2(1)%ya)
  call sub(3)

  yy2(1)%yi=(/4,5/)
  a=x(yy2(1)%yi)
  call sub(4)

 print *,'pass'

 contains

  subroutine sub(kk)
   if (.not.allocated(a%x1)) write(6,*) "NG"
   if (size(a%x1)/=2) write(6,*) "NG"
   if (any(a%x1/=(/kk,kk+1/))) write(6,*) "NG"
  end subroutine
end
