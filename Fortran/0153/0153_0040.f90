module m1
 character(5*4):: x2
contains
subroutine s1
x2='1234123412341234'(1:2)
if (x2/=1_'12') print *,105,X2
x2=1_'123'(1:1)
if (x2/=1_'1') print *,106,X2
end subroutine
end
use m1
call s1
print *,'pass'
end
