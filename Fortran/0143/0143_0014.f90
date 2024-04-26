module m1
parameter(n9=999999,n8=n9-2)
type z
real(8)    :: b(n8:n9)
end type
type y
type(z),allocatable :: a(:,:,:)
integer::xx
end type
type x
type(y)::xa(n8:n9)
end type
end
subroutine s1(k1,k2,k3,v)
use m1
type(x)::v

forall (n1=n8:k2,n2=n8:k3)
forall(m9=n8:n9)
  v%xa(m9)%a(: , n1, n2+1 )%b(n9)=v%xa(m9)%a(: , n1 , n2 )%b(n9)+dble(n1+n2)
end forall
end forall

end
subroutine s2(k1,k2,k3,v)
use m1
real(8) :: c(n8:n9,n8:k1,n8:k2,n8:k3)
type(x)::v

do      n2=n8,k3
do      n1=n8,k2
do m9=n8,n9
  c(m9,: , n1 , n2)=v%xa(m9)%a(:, n1 , n2  )%b(n9)+dble(n1+n2)
end do
end do
end do
do      n2=n8,k3
do      n1=n8,k2
do m9=n8,n9
  v%xa(m9)%a(: , n1 , n2+1)%b(n9)=c(m9,:, n1 , n2 )
end do
end do
end do
end

use m1
integer,parameter:: k1=n8+4,k2=n8+2,k3=n8+3
type(x)::va
type(x)::vb
do m9=n8,n9
allocate( va%xa(m9)%a(n8:k1,n8:k2,n8:k3+1),vb%xa(m9)%a(n8:k1,n8:k2,n8:k3+1))
va%xa(m9)%a%b(n9)=reshape([(n,n=1,25*3)],[5,3,5])
vb%xa(m9)%a%b(n9)=reshape([(n,n=1,25*3)],[5,3,5])
end do
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
do m9=n8,n9
if (any(va%xa(m9)%a%b(n9)/=vb%xa(m9)%a%b(n9))) then 
print *,101,m9
print *,va%xa(m9)%a
print *,vb%xa(m9)%a
endif
end do
print *,'pass'
end
