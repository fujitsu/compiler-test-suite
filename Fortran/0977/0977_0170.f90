module m1
integer ::j=2
contains
 function f1(k) result(r)
 integer,dimension(:)::k
 character(kind=1,len=2):: r(size(k))
 r(1)='12'
 r(2)='34'
 if (any(k/=(/1,2/)))write(6,*) "NG"
 end function
 function f2(k) result(r)
 integer,dimension(:)::k
 character(kind=1,len=j):: r(size(k))
 r(1)='12'
 r(2)='34'
 if (any(k/=(/1,2/)))write(6,*) "NG"
 end function
end
use m1
character(kind=1,len=2):: b(2)
integer,dimension(2)::k=(/1,2/)
integer,dimension(:),allocatable::n
b=(/'12','34'/)
allocate(n(2))
n=(/1,2/)
if (any(f1(k)/=b))write(6,*) "NG"
if (any(f1(n)/=b))write(6,*) "NG"
if (any(f2(k)/=b))write(6,*) "NG"
if (any(f2(n)/=b))write(6,*) "NG"
print *,'pass'
end
