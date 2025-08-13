subroutine s1
byte      k1
integer :: a1(1)
data (a1(k1),k1=1,1)/1/
call ss
contains
subroutine ss
implicit none
if (a1(1)/=1) print *,101
k1=1
write(9,'("k1",z16.16)')loc(k1)
end subroutine
end
call s1
print *,'pass'
end
