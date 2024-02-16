module m1
contains
 subroutine s(a)
 entry      e(a)
 integer,allocatable,intent(in)::a(:)
end
end
use m1
 integer,allocatable::a(:)
call s(a)
call e(a)
print *,'pass'
end 
