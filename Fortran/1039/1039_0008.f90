module m
integer,pointer::a(:)
end
use m
allocate(a(3))
a(2)=1
call sub1(a,2)
print *,'pass'
contains
subroutine sub1(x,n1)
integer,pointer::x(:)
do n0=n1,2
j=size(x)
call sub2
k=size(x)
if (j/=3)print *,'error-1'
if (k/=2)print *,'error-2'
end do
end subroutine
end
subroutine sub2
use m
deallocate(a)
allocate(a(2))
a(2)=3
end
