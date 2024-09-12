module m1
contains
subroutine s1(b1)
 character(:),allocatable:: a2(:)
 character(*):: b1
allocate( character:: a2(-1001:-1000))
 a2=b1
if (len(a2)/=4) print *,102,len(a2)
if (sizeof(a2)/=8) print *,103,sizeof(a2)
if (lbound(a2,1)/=-1001) print *,104
if (a2(-1001)/='abcd') print *,2021
if (a2(-1000)/='abcd') print *,2022
end subroutine
end
subroutine s
use m1
 character(*),parameter:: b1='abcd'
call s1(b1)
end
call s
print *,'pass'
end
