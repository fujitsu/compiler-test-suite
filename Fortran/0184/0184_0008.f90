subroutine s1
integer :: a1(1)
data (a1(k1),k1=1,1)/1/
n1(n)=k1+n
call ss
contains
subroutine ss
implicit none
if (a1(1)/=1) print *,101
k1=1
if (n1(1)/=2) print *,201
write(4,'("k1",z16.16)')loc(k1)
end subroutine
end
call s1
print *,'pass'
end
