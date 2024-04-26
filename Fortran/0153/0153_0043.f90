module m1
 character(3):: x2
contains
subroutine s1
x2='123'(1:2)
if (x2/='12') print *,105,X2
end subroutine
end
use m1
call s1
print *,'pass'
end
