module m1
 character(5*4):: x2
contains
subroutine s1
x2='1234'(1:2)
if (x2/=1_'12') print *,105,X2
call s('1234'(1:2))
end subroutine
end
use m1
call s1
print *,'pass'
end
subroutine s(x)
character(*)::x
if (len(x)/=2) print *,101
if (x/='12') print *,102
end
