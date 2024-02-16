module m
contains
subroutine s( a)
entry e(a)
integer,allocatable,intent(in):: a(:)
end
end
use m
integer,allocatable           :: a(:)
call s(a)
call e(a)
print *,'pass'
end
