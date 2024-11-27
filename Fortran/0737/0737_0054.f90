module m1
  integer(4),allocatable,dimension(:)::pp1,pp4
contains
subroutine sub1(pp)
  integer(4),allocatable,dimension(:)::pp
  if (any(pp/=1))write(6,*) "NG"
end subroutine
end
program aaa
use m1
 interface
  subroutine sub(pp)
   integer(4),allocatable,dimension(:)::pp
   intent(in) pp
  end subroutine
 end interface
  integer(4),allocatable,dimension(:)::pp,pp2,pp3
  allocate(pp(5),pp1(5),pp2(2))
do i=1,5
  pp=1
  call sub(pp)
  pp1=1
  call sub1(pp1)
  pp2=1
  call sub1(pp2)
end do
print *,'pass'
end

subroutine sub(pp)
  integer(4),allocatable,dimension(:)::pp
  intent(in)  pp
  if (any(pp/=1))write(6,*) "NG"
end
