module m
integer,pointer::a(:)
end
use m
allocate(a(3))
a(2)=1
call sub1(a)
if (a(2)/=3)print *,'error-3'
print *,'pass'
contains
subroutine sub1(x)
integer,pointer::x(:)
if (x(2)/=1)print *,'error-1'
call sub2
if (x(2)/=3)print *,'error-2'
end subroutine
end
subroutine sub2
use m
integer,pointer:: aa(:)
deallocate(a)
allocate(aa(1000))
allocate(a(1000))
a(2)=3
end
