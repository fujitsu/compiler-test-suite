module m1
integer,parameter::mm1=100001,mm2=100002
integer,parameter:: k1=5,k2=3,k3=4
type w
integer(8):: q(k2)
end type
type x
integer::zz
type(w),allocatable :: a(:,:)
end type
end
subroutine s1(j1,j2,j3,v)
use m1
type(x)::v(mm1:mm2)

forall (n1=1:j2)
forall (n2=1:j3)
  v(mm2)%a(: , n2 )%q(n1)=n2+v(mm2)%a(: , n2 )%q(n1)
end forall
end forall

end
subroutine s2(j1,j2,j3,v)
use m1
integer(8) :: c(j1,j3,j2)
type(x)::v(mm1:mm2)

do      n1=1,j2
do      n2=1,j3
  c(: , n2,n1)=n2+v(mm2)%a(:, n2  )%q(n1)
end do
end do
do      n1=1,j2
do      n2=1,j3
  v(mm2)%a(: , n2)%q(n1)=c(:, n2,n1 )
end do
end do
end

use m1
type(x)::va(2),vb(2)
allocate( va(1)%a(k1,k3+1),vb(1)%a(k1,k3+1))
allocate( va(2)%a(k1,k3+1),vb(2)%a(k1,k3+1))
kkk=1
do kk2=1,k2
do kk3=1,k3
do kk1=1,k1
va(1)%a(kk1,kk3)%q(kk2)=kkk
vb(1)%a(kk1,kk3)%q(kk2)=kkk
va(2)%a(kk1,kk3)%q(kk2)=kkk
vb(2)%a(kk1,kk3)%q(kk2)=kkk
kkk=kkk+1
end do
end do
end do
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
do kk3=1,k3
do kk1=1,k1
if (any(va(1)%a(kk1,kk3)%q/=vb(1)%a(kk1,kk3)%q)) then 
print *,101
print *,va(1)%a(kk1,kk3)%q
print *,vb(1)%a(kk1,kk3)%q
endif
end do
end do
do kk3=1,k3
do kk1=1,k1
if (any(va(2)%a(kk1,kk3)%q/=vb(2)%a(kk1,kk3)%q)) then 
print *,102
print *,va(2)%a(kk1,kk3)%q
print *,vb(2)%a(kk1,kk3)%q
endif
end do
end do
print *,'pass'
end
