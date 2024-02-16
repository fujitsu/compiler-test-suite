module m1
  contains
subroutine ss1(b)
integer,contiguous:: b(:)
    if (any(b/=[1,3])) print *,3011
end subroutine
end
subroutine s1
use m1
integer,target:: cc(3)=[1,2,3]
k=2
call ss1( cc(::k))
end
call s1
print *,'pass'
end

