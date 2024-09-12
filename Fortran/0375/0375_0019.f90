module m1
contains
subroutine s1
entry s2
end subroutine
end
use m1
call s1
call s2
print *,'pass'
end
