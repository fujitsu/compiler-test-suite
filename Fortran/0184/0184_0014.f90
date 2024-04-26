function m1() result(k1)
entry m2() result(k2)
integer :: a1(1),a2(1)
data (a1(k1),k1=1,1)/1/
data (a2(k2),k2=1,1)/1/
call ss
contains
subroutine ss
implicit none
if (a1(1)/=1) print *,101
if (a2(1)/=1) print *,101
k1=2
k2=2
write(1,'("k1",z16.16)')loc(k1)
write(1,'("k2",z16.16)')loc(k2)
end subroutine
end
if (m1()/=2) print *,901
if (m2()/=2) print *,902
print *,'pass'
end
