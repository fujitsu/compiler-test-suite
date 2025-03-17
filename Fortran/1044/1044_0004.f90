module m1
 integer,allocatable:: a(:)
contains
subroutine sub
a=1
end subroutine
end
use m1
allocate(a(2))
call sub
if (a(2)/=1)write(6,*) "NG"
print *,'pass'
end

