module m1
integer :: a1(1),a2(1)
data (a1(k1),k1=1,1)/1/
private ::k1
public  ::k2
data (a2(k2),k2=1,1)/1/
contains
subroutine ss
implicit none
integer::n1,n2
k1=0;k2=0
if (a1(1)/=1) print *,101
n1=k1
write(20,'("k1",z16.16)')loc(n1)
if (a2(1)/=1) print *,101
n2=k2
write(20,'("k2",z16.16)')loc(n2)
end subroutine
end
use m1
call ss
print *,'pass'
end
