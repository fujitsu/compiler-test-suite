module m1
  type x0
     integer:: x11 
     integer,allocatable:: x12(:,:)
     integer:: x01 
     integer,allocatable:: x02(:,:)
  end type
end
subroutine s1(n1,n2,n3)
use m1
type (x0),allocatable::v1(:,:,:),v2(:,:,:)


allocate(v2(n1,n2,n3))
do k3=1,n3
do k2=1,n2
do k1=1,n1
allocate(v2(k1,k2,k3)%x02(k2,k3))
k=1
do kk2=1,k2
do kk3=1,k3
v2(k1,k2,k3)%x02(kk2,kk3)=k
k=k+1
end do
end do
end do
end do
end do

allocate( v1 ,source=v2) 
if (any(ubound(v1)/=[1,2,3]))print *,501
if (any(ubound(v2)/=[1,2,3]))print *,502

do k3=1,n3
do k2=1,n2
do k1=1,n1
k=1
do kk2=1,k2
do kk3=1,k3
if (v1(k1,k2,k3)%x02(kk2,kk3)/=k) print *,101,k
if (v2(k1,k2,k3)%x02(kk2,kk3)/=k) print *,102,k
k=k+1
end do
end do
end do
end do
end do

do k3=1,n3
do k2=1,n2
do k1=1,n1
k=1
do kk2=1,k2
do kk3=1,k3
v2(k1,k2,k3)%x02(kk2,kk3)=k+100
k=k+1
end do
end do
end do
end do
end do
do k3=1,n3
do k2=1,n2
do k1=1,n1
k=1
do kk2=1,k2
do kk3=1,k3
if (v1(k1,k2,k3)%x02(kk2,kk3)/=k) print *,201,k
if (v2(k1,k2,k3)%x02(kk2,kk3)/=k+100) print *,202,k
k=k+1
end do
end do
end do
end do
end do

do k3=1,n3
do k2=1,n2
do k1=1,n1
deallocate (v2(k1,k2,k3)%x02)
k=1
do kk2=1,k2
do kk3=1,k3
if (allocated(v2(k1,k2,k3)%x02)) print *,301,k
if (v1(k1,k2,k3)%x02(kk2,kk3)/=k) print *,302,k
k=k+1
end do
end do
end do
end do
end do

do k3=1,n3
do k2=1,n2
do k1=1,n1
deallocate (v1(k1,k2,k3)%x02)
if (allocated(v1(k1,k2,k3)%x02)) print *,401,k
if (allocated(v1(k1,k2,k3)%x12)) print *,801,k
if (allocated(v2(k1,k2,k3)%x12)) print *,901,k
end do
end do
end do

end
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
print *,'pass'
end
