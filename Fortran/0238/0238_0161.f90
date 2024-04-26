module m1
  type x0
     integer:: x01 (4)
     integer,allocatable:: x02(:,:,:)
     integer,allocatable:: x03(:,:,:)
     integer,allocatable:: x04(:,:,:)
  end type
end
subroutine s1(n1,n2,n3)
use m1
type y
integer::y1
type (x0),allocatable::v1(:)
end type
type(y)::v11
type (x0),allocatable::v2(:)


allocate(v2(2))
do k=1,2
allocate(v2(k)%x02(n1,n2,n3))
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
v2(k)%x02(k1,k2,k3)=kk
kk=kk+1
end do
end do
end do
end do

allocate( v11%v1 ,source=v2) 

kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
do k=1,2
if (v11%v1(k)%x02(k1,k2,k3)/=kk) print *,101,k
if (v2(k)%x02(k1,k2,k3)/=kk) print *,103,k
end do
kk=kk+1
end do
end do
end do

do k=1,2
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
v2(k)%x02(k1,k2,k3)=11+kk
if (v11%v1(k)%x02(k1,k2,k3)/=kk) print *,201,k
if (v2(k)%x02(k1,k2,k3)/=11+kk) print *,203,k
kk=kk+1
end do
end do
end do

deallocate (v2(k)%x02)
if (allocated(v2(k)%x02)) print *,301,k
if (allocated(v2(k)%x03)) print *,301,k
if (allocated(v2(k)%x04)) print *,301,k
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (v11%v1(k)%x02(k1,k2,k3)/=kk) print *,302,k
kk=kk+1
end do
end do
end do


deallocate (v11%v1(k)%x02)
if (allocated(v11%v1(k)%x02)) print *,401,k
if (allocated(v11%v1(k)%x03)) print *,401,k
if (allocated(v11%v1(k)%x04)) print *,401,k
end do

end
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
print *,'pass'
end
