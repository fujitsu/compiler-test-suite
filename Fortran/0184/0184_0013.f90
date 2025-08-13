function k1() 
entry k2()
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
write(13,'("k1",z16.16)')loc(k1)
write(13,'("k2",z16.16)')loc(k2)
end subroutine
end
if (k1()/=2) print *,901
if (k2()/=2) print *,902
print *,'pass'
end
