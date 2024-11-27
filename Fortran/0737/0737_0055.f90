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
  subroutine sub(pp,kk)
   integer(4),allocatable,dimension(:)::pp
   intent(in) pp
  end subroutine
 end interface
  integer(4),allocatable,dimension(:)::pp,pp2,pp3
  allocate(pp(5),pp3(5),pp4(2))
do i=1,5
  pp3=1
  call sub2(pp3,5)
  pp4=1
  call sub2(pp4,2)
end do
print *,'pass'
contains
subroutine sub2(pp,kk)
  integer(4),allocatable,dimension(:)::pp
  if (size(pp)/=kk)write(6,*) "NG"
  if (any(pp/=1))write(6,*) "NG"
end subroutine
end

subroutine sub(pp,kk)
  integer(4),allocatable,dimension(:)::pp
  intent(in)  pp
  if (size(pp)/=kk)write(6,*) "NG"
  if (any(pp/=1))write(6,*) "NG"
end
