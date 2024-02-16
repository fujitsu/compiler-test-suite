module m1
contains
subroutine ss1(b)
integer,contiguous:: b(:)

    if (any(b/=[1,3])) print *,3011,b

end subroutine
end
subroutine s1
use m1
integer,target:: cc(3)=[1,2,3]
integer,pointer::ptr(:)
ptr=>cc
k=2

call ss1( ptr(1:3:k))
end
call s1
print *,'pass'
end 

