subroutine s1 
integer :: a1(1)
data k1/2/ 
data (a1(k1),k1=1,1)/1/
call ss
contains
subroutine ss
implicit none
if (k1/=2) print *,111
if (a1(1)/=1) print *,101
k1=3
write(1,'("k1",z16.16)')loc(k1)
end subroutine
end
call s1
print *,'pass'
end
