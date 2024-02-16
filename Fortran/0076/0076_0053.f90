module m
contains
subroutine s( a, b)
entry e(a,b)
integer,allocatable,intent(in):: a(:),b(:)
end
end
use m
integer,allocatable           :: a(:),b(:)
call s(a,b)
call e(a,b)
print *,'pass'
end
