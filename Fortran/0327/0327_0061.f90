module m
contains
subroutine sub(a,b)
integer,dimension(:)::a,b
integer :: i
do i=1,5
a(i)=b(i)
end do
entry ent(a,b)
if ( a(5)==5 ) then
  a(5)=11
end if
end subroutine
end

use m
integer,dimension(10)::x
x=(/1,2,3,4,5,6,7,8,9,10/)
call sub(x(1:5),x(1:10:2))
x=(/1,2,3,4,5,6,7,8,9,10/)
call ent(x(1:5),x(1:10:2))
  print *,x(1),x(2),x(3),x(4),x(5)
end
