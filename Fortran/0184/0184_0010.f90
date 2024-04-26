module m1
bind(c)   k1
integer :: a1(1)
data (a1(k1),k1=1,1)/1/
contains
subroutine s1
implicit none
if (a1(1)/=1) print *,101
k1=1
write(1,'("k1",z16.16)')loc(k1)
end subroutine
end
use m1
call s1
print *,'pass'
end
