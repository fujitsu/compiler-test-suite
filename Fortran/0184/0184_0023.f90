subroutine s1
save
type x
end type
class(x),allocatable::a4
integer :: a1(1),a2(1)
data (a1(k1),k1=1,1)/1/
integer ::a3(1)=[( k2,k2=1,1)]
stmt(k6)=k6
a2=[( k3,k3=1,1)]
forall( k4=1:1) a2(k4)=k4
do concurrent( k5=1:1) 
 a2(k5)=k5
end do
associate( k7=> a1(1) )
  k7=1
end associate
select type (k8=>a4)
 type is(x)
end select
n=0
call ss(n)
contains
recursive subroutine ss(n)
integer::n
if (a1(1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
  k1=n
  k2=n
  k3=n
  k4=n
  k5=n
  k6=n
  k7=n
  k8=n
n=n+1
if (n<2) call ss(n)
n=n-1
if (k1/=n) print *,10001,k1,n
if (k2/=n) print *,10002,n
if (k3/=n) print *,10003,n
if (k4/=n) print *,10004,k4,n
if (k5/=n) print *,10005,k5,n
if (k6/=n) print *,10006,k6,n
if (k7/=n) print *,10007,n
if (k8/=n) print *,10008,n
end subroutine
end
call s1
print *,'pass'
end
