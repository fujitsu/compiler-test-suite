module m1
  type x0
     integer:: x01 (4)
     integer(1),allocatable:: x02(:,:,:)
     integer,allocatable:: z01(:,:,:)
     integer(2),allocatable:: xa2(:,:,:)
     integer,allocatable:: z02(:,:,:)
     integer(4),allocatable:: xb2(:,:,:)
     integer,allocatable:: z03(:,:,:)
     integer(8),allocatable:: xc2(:,:,:)
     integer,allocatable:: z04(:,:,:)
  end type
end
subroutine s1(n1,n2,n3)
use m1
type y
integer::y1
type (x0),allocatable::v1(:)
end type
type(y),pointer    ::v11(:)
type z
integer::y1(1000)
type (x0),allocatable::v2(:,:,:)
end type
type(z),pointer::w(:)

allocate(w(n3))
allocate(w(n3)%v2(n1,n2,n3),v11(n2))
do k=1,2
allocate(w(n3)%v2(n1,k,n3)%x02(n1,n2,n3))
allocate(w(n3)%v2(n1,k,n3)%xa2(n1,n2,n3))
allocate(w(n3)%v2(n1,k,n3)%xb2(n1,n2,n3))
allocate(w(n3)%v2(n1,k,n3)%xc2(n1,n2,n3))
end do
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
w(n3)%v2(n1,1,n3)%x02(k1,k2,k3)=kk
w(n3)%v2(n1,2,n3)%x02(k1,k2,k3)=kk*2
w(n3)%v2(n1,1,n3)%xa2(k1,k2,k3)=kk
w(n3)%v2(n1,2,n3)%xa2(k1,k2,k3)=kk*2
w(n3)%v2(n1,1,n3)%xb2(k1,k2,k3)=kk
w(n3)%v2(n1,2,n3)%xb2(k1,k2,k3)=kk*2
w(n3)%v2(n1,1,n3)%xc2(k1,k2,k3)=kk
w(n3)%v2(n1,2,n3)%xc2(k1,k2,k3)=kk*2
kk=kk+1
end do
end do
end do

allocate( v11(n2)%v1(n2),stat=nmk ,source=w(n3)%v2(n1,n2,n3)) 
if (nmk/=0) print *,1230

kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (v11(n2)%v1(1)%x02(k1,k2,k3)/=kk*2) print *,101,kk
if (v11(n2)%v1(2)%x02(k1,k2,k3)/=kk*2) print *,102,kk
if (w(n3)%v2(n1,1,n3)%x02(k1,k2,k3)/=kk) print *,103,k
if (w(n3)%v2(n1,2,n3)%x02(k1,k2,k3)/=kk*2) print *,104,k

if (v11(n2)%v1(1)%xa2(k1,k2,k3)/=kk*2) print *,101,kk
if (v11(n2)%v1(2)%xa2(k1,k2,k3)/=kk*2) print *,102,kk
if (w(n3)%v2(n1,1,n3)%xa2(k1,k2,k3)/=kk) print *,103,k
if (w(n3)%v2(n1,2,n3)%xa2(k1,k2,k3)/=kk*2) print *,104,k

if (v11(n2)%v1(1)%xb2(k1,k2,k3)/=kk*2) print *,101,kk
if (v11(n2)%v1(2)%xb2(k1,k2,k3)/=kk*2) print *,102,kk
if (w(n3)%v2(n1,1,n3)%xb2(k1,k2,k3)/=kk) print *,103,k
if (w(n3)%v2(n1,2,n3)%xb2(k1,k2,k3)/=kk*2) print *,104,k

if (v11(n2)%v1(1)%xc2(k1,k2,k3)/=kk*2) print *,101,kk
if (v11(n2)%v1(2)%xc2(k1,k2,k3)/=kk*2) print *,102,kk
if (w(n3)%v2(n1,1,n3)%xc2(k1,k2,k3)/=kk) print *,103,k
if (w(n3)%v2(n1,2,n3)%xc2(k1,k2,k3)/=kk*2) print *,104,k
kk=kk+1
end do
end do
end do

do k=1,2
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
w(n3)%v2(n1,1,n3)%x02(k1,k2,k3)=kk*4
w(n3)%v2(n1,2,n3)%x02(k1,k2,k3)=kk*8
if (v11(n2)%v1(1)%x02(k1,k2,k3)/=kk*2) print *,201,k
if (v11(n2)%v1(2)%x02(k1,k2,k3)/=kk*2) print *,202,k
if (w(n3)%v2(n1,1,n3)%x02(k1,k2,k3)/=kk*4) print *,203,k
if (w(n3)%v2(n1,2,n3)%x02(k1,k2,k3)/=kk*8) print *,204,k
w(n3)%v2(n1,1,n3)%xa2(k1,k2,k3)=kk*4
w(n3)%v2(n1,2,n3)%xa2(k1,k2,k3)=kk*8
if (v11(n2)%v1(1)%xa2(k1,k2,k3)/=kk*2) print *,201,k
if (v11(n2)%v1(2)%xa2(k1,k2,k3)/=kk*2) print *,202,k
if (w(n3)%v2(n1,1,n3)%xa2(k1,k2,k3)/=kk*4) print *,203,k
if (w(n3)%v2(n1,2,n3)%xa2(k1,k2,k3)/=kk*8) print *,204,k
w(n3)%v2(n1,1,n3)%xb2(k1,k2,k3)=kk*4
w(n3)%v2(n1,2,n3)%xb2(k1,k2,k3)=kk*8
if (v11(n2)%v1(1)%xb2(k1,k2,k3)/=kk*2) print *,201,k
if (v11(n2)%v1(2)%xb2(k1,k2,k3)/=kk*2) print *,202,k
if (w(n3)%v2(n1,1,n3)%xb2(k1,k2,k3)/=kk*4) print *,203,k
if (w(n3)%v2(n1,2,n3)%xb2(k1,k2,k3)/=kk*8) print *,204,k
w(n3)%v2(n1,1,n3)%xc2(k1,k2,k3)=kk*4
w(n3)%v2(n1,2,n3)%xc2(k1,k2,k3)=kk*8
if (v11(n2)%v1(1)%xc2(k1,k2,k3)/=kk*2) print *,201,k
if (v11(n2)%v1(2)%xc2(k1,k2,k3)/=kk*2) print *,202,k
if (w(n3)%v2(n1,1,n3)%xc2(k1,k2,k3)/=kk*4) print *,203,k
if (w(n3)%v2(n1,2,n3)%xc2(k1,k2,k3)/=kk*8) print *,204,k
kk=kk+1
end do
end do
end do

end do

deallocate (w(n3)%v2(n1,1,n3)%x02)
deallocate (w(n3)%v2(n1,2,n3)%x02)
if (allocated(w(n3)%v2(n1,1,n3)%x02)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%x02)) print *,302,k
deallocate (w(n3)%v2(n1,1,n3)%xa2)
deallocate (w(n3)%v2(n1,2,n3)%xa2)
if (allocated(w(n3)%v2(n1,1,n3)%xa2)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%xa2)) print *,302,k
deallocate (w(n3)%v2(n1,1,n3)%xb2)
deallocate (w(n3)%v2(n1,2,n3)%xb2)
if (allocated(w(n3)%v2(n1,1,n3)%xb2)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%xb2)) print *,302,k
deallocate (w(n3)%v2(n1,1,n3)%xc2)
deallocate (w(n3)%v2(n1,2,n3)%xc2)
if (allocated(w(n3)%v2(n1,1,n3)%xc2)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%xc2)) print *,302,k

if (allocated(w(n3)%v2(n1,1,n3)%z01)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%z01)) print *,302,k
if (allocated(w(n3)%v2(n1,1,n3)%z02)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%z02)) print *,302,k
if (allocated(w(n3)%v2(n1,1,n3)%z03)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%z03)) print *,302,k
if (allocated(w(n3)%v2(n1,1,n3)%z04)) print *,301,k
if (allocated(w(n3)%v2(n1,2,n3)%z04)) print *,302,k
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (v11(n2)%v1(1)%x02(k1,k2,k3)/=kk*2) print *,304,k
if (v11(n2)%v1(2)%x02(k1,k2,k3)/=kk*2) print *,305,k
if (v11(n2)%v1(1)%xa2(k1,k2,k3)/=kk*2) print *,304,k
if (v11(n2)%v1(2)%xa2(k1,k2,k3)/=kk*2) print *,305,k
if (v11(n2)%v1(1)%xb2(k1,k2,k3)/=kk*2) print *,304,k
if (v11(n2)%v1(2)%xb2(k1,k2,k3)/=kk*2) print *,305,k
if (v11(n2)%v1(1)%xc2(k1,k2,k3)/=kk*2) print *,304,k
if (v11(n2)%v1(2)%xc2(k1,k2,k3)/=kk*2) print *,305,k
kk=kk+1
end do
end do
end do


do k=1,2
deallocate (v11(n2)%v1(k)%x02)
deallocate (v11(n2)%v1(k)%xa2)
deallocate (v11(n2)%v1(k)%xb2)
deallocate (v11(n2)%v1(k)%xc2)
if (allocated(v11(n2)%v1(k)%x02)) print *,401,k
if (allocated(v11(n2)%v1(k)%xa2)) print *,401,k
if (allocated(v11(n2)%v1(k)%xb2)) print *,401,k
if (allocated(v11(n2)%v1(k)%xc2)) print *,401,k
if (allocated(v11(n2)%v1(k)%z01)) print *,401,k
if (allocated(v11(n2)%v1(k)%z02)) print *,401,k
if (allocated(v11(n2)%v1(k)%z03)) print *,401,k
if (allocated(v11(n2)%v1(k)%z04)) print *,401,k
end do

end
call s1(1,2,3)
print *,'pass'
end
