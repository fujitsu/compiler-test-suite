function k1() 
integer :: a1(1)
data (a1(k1),k1=1,1)/1/
call ss
contains
subroutine ss
implicit none
if (a1(1)/=1) print *,101
k1=2
write(12,'("k1",z16.16)')loc(k1)
end subroutine
end
if (k1()/=2) print *,901
print *,'pass'
end
