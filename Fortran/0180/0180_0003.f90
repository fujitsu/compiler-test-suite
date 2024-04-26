module m1
 integer:: a
 integer,allocatable:: b(:)
end
subroutine s1
use m1
a=1
b=1
contains
subroutine s2
use m1
a=1
b=1
end
end
use m1
allocate(b(2))
call s1
print *,'pass'
end

