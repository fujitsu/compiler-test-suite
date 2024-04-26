module m1
contains
subroutine ss( n,m , a1,a2,a3, am)
 integer :: a1(n), a2(n,m,m) , a3, am(:)
 integer :: aa( size(a1) + size(a2) + 1 + size(a2) + 1 + 1 + size(a1) +size(a2) + 1 + 1 )
 integer:: a4=8,vs(3)=[1,2,3]

aa(:6)=[  a2(vs,m,m)  ,   a1+a1 ] 
contains
subroutine foo( d )
integer::d(:)
if (any(d/=am)) print *,102
end subroutine
end subroutine
end
subroutine s1
use m1
integer,parameter::n=3,m=1
 integer :: a1(n), a2(n,m,m) , a3 
 integer :: am( size(a1) + size(a2) + 1 + size(a2) + 1 + 1 + size(a1) +size(    a2) + 1 + 1 )
 integer:: a4=8
a1=[1,2,3]
a2=reshape([4,5,6],[n,m,m])
a3=7
am=[ a1,a2,a3, a2,a2(n,m,m), a4, a1+a1 , a2+a2 , a3+a3, n+a4]
if (any(am/=&
[1,2,3,4,5,6,7,4,5,6,6,8,2,4,6,8,10,12,14,11]))print *,10001

call ss (n,m, a1,a2,a3, am)

end subroutine
call s1
print *,'pass'
end
