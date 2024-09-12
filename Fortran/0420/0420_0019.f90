module m1
contains
subroutine s1(b1,b2)
 character(:),allocatable:: a1
 character(:),allocatable:: a2(:)
 character(*):: b1
 character(*):: b2(:)
allocate( character:: a1)
allocate( character:: a2(-1000:-1000))
 a1=b1
 a2=b2
if (len(a1)/=3) print *,101,len(a1)
if (len(a2)/=4) print *,102,len(a2)
if (sizeof(a2)/=8) print *,103,sizeof(a2)
if (a1/='123') print *,201
if (a2(1)/='abcd') print *,202
if (a2(2)/='efgh') print *,203
end subroutine
end
subroutine s
use m1
 character(*),parameter:: b1='123'
 character(*),parameter:: b2(*)=['abcd','efgh']
call s1(b1,b2)
end
call s
print *,'pass'
end
