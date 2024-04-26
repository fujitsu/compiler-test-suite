subroutine s1
integer :: a1(1),a2(1)
data (a1(k1),k1=1,1)/1/
common k1,k2
data (a2(k2),k2=1,1)/1/
call ss
contains
subroutine ss
implicit none
if (a1(1)/=1) print *,101
k1=1
write(1,'("k1",z16.16)')loc(k1)
if (a2(1)/=1) print *,101
k2=1
write(1,'("k2",z16.16)')loc(k2)
end subroutine
end
call s1
print *,'pass'
end
