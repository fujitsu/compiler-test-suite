module m1
 integer,allocatable:: a(:)
end
subroutine sub
use m1
a(2)=1
end
use m1
allocate(a(2))
call sub
if (a(2)/=1)write(6,*) "NG"
print *,'pass'
end

