subroutine s1 
integer :: a1(1),a2(1)
pointer (k1,np)
data (a1(k1),k1=1,1)/1/
data (a2(k2),k2=1,1)/3/
pointer (nn,k2)
call ss
contains
subroutine ss
implicit none
if (a1(1)/=1) print *,101
if (a2(1)/=3) print *,102
k1=loc(a1)
if (np/=1) print *,501
nn=loc(a2)
if (k2/=3) print *,503
write(1,'("k1",z16.16)')loc(k1)
write(1,'("k2",z16.16)')loc(k2)
end subroutine
end
call s1
print *,'pass'
end
