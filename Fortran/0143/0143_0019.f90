module m1
parameter(n9=999999,n8=n9-2)
type z
real(8),allocatable    :: b(:)
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

do      n2=n8,k3
do      n1=n8,k2
do n0=n8,k1
forall (m9=n8:n9)
  v%xa(m9)%a(n0, n1, n2+1 )%b(:)=v%xa(m9)%a(n0 , n1 , n2 )%b(:)+1
end forall
end do     
end do     
end do     

end
subroutine s2(k1,k2,k3,v)
use m1
real(8) :: c(n8:n9,n8:n9,n8:k1,n8:k2,n8:k3)
type(x)::v

do      n2=n8,k3
do      n1=n8,k2
do n0=n8,k1
do m9=n8,n9
  c(: , m9,n0,n1 , n2)=v%xa(m9)%a(n0, n1 , n2  )%b(:)+1
end do
do m9=n8,n9
  v%xa(m9)%a(n0 , n1 , n2+1)%b(:)=c(:, m9,n0,n1 , n2 )
end do
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
do j1=n8,k1
do j2=n8,k2
do j3=n8,k3+1
allocate( va%xa(m9)%a(j1,j2,j3)%b(n8:n9),vb%xa(m9)%a(j1,j2,j3)%b(n8:n9))
end do
end do
end do
end do
nn=1
do mn9=n8,n9
do m9=n8,n9
do j1=n8,k1
do j2=n8,k2
do j3=n8,k3+1
va%xa(mn9)%a(j1,j2,j3)%b(m9)=nn
vb%xa(mn9)%a(j1,j2,j3)%b(m9)=nn
nn=nn+1
end do
end do
end do
end do
end do
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
nn=1
do m9=n8,n9
do j1=n8,k1
do j2=n8,k2
do j3=n8,k3+1
do mn9=n8,n9
if (   (va%xa(mn9)%a(j1,j2,j3)%b(m9)/=vb%xa(mn9)%a(j1,j2,j3)%b(m9))) then 
print *,101,nn,mn9,j1,j2,j3,m9
print *,va%xa(mn9)%a(j1,j2,j3)%b(m9)
print *,vb%xa(mn9)%a(j1,j2,j3)%b(m9)
stop
endif
nn=nn+1
end do
end do
end do
end do
end do
print *,'pass'
end
