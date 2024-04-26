module m1
contains
subroutine ss( n,m , a1,a2,a3, am)
 integer:: vs(3)=[1,2,3]
 complex :: a1(n), a2(n,m,m) , a3, am(:)
 complex :: aa( size(a1) + size(a2) + 1 + size(a2) + 1 + 1 + size(a1) +size(a2) + 1 + 1 )
 complex:: a4=8

aa=[ complex(16)::a1, a2(vs,m,m) , a3 , [(((a2(k1,k2,k3),k1=1,n),k2=1,m),k3=1,m)],  a2(n,m,m) , a4, a1+a1 , a2+a2 , a3+a3, n+a4 ]
call foo([ complex(16)::a1, a2(vs,m,m), a3 , [(((a2(k1,k2,k3),k1=1,n),k2=1,m),k3=1,m)],  a2(n,m,m) , a4, a1+a1 , a2+a2 , a3+a3, n+a4 ])
if (size([ complex(16)::a1, a2(vs,m,m), a3 , [(((a2(k1,k2,k3),k1=1,n),k2=1,m),k3=1,m)],  a2(n,m,m) , a4, a1+a1 , a2+a2 , a3+a3, n+a4 ])/=size(am)) print *,201
if (any(ubound([ complex(16)::a1, a2(vs,m,m), a3 , [(((a2(k1,k2,k3),k1=1,n),k2=1,m),k3=1,m)],  a2(n,m,m) , a4, a1+a1 , a2+a2 , a3+a3, n+a4 ])/=size(am))) print *,202
if (any(aa/=am)) print *,101
contains
subroutine foo( d )
complex(16)::d(:)
if (any(d/=am)) print *,102
end subroutine
end subroutine
end
subroutine s1
use m1
integer,parameter::n=3,m=1
 complex :: a1(n), a2(n,m,m) , a3 
 complex:: am( size(a1) + size(a2) + 1 + size(a2) + 1 + 1 + size(a1) +size(    a2) + 1 + 1 )
 complex:: a4=8
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
