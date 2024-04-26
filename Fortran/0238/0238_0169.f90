module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
     integer,allocatable:: x12(:)
     integer,allocatable:: x92(:)
     integer,allocatable:: x82(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1(:),v2


allocate(v2)
do k=1,1
allocate(v2%x02(2))
v2%x02(1)=1+k
v2%x02(2)=2+k
allocate(v2%x82(2))
v2%x82(1)=1+k
v2%x82(2)=2+k
allocate(v2%x92(2))
v2%x92(1)=1+k
v2%x92(2)=2+k
end do

allocate( v1(2) ,source=v2) 

do k=1,2
if (v1(k)%x02(1)/=1+1) print *,101,k
if (v1(k)%x02(2)/=2+1) print *,102,k
if (v2%x02(1)/=1+1) print *,103,k
if (v2%x02(2)/=2+1) print *,104,K
if (v1(k)%x82(1)/=1+1) print *,101,k
if (v1(k)%x82(2)/=2+1) print *,102,k
if (v2%x92(1)/=1+1) print *,103,k
if (v2%x92(2)/=2+1) print *,104,K
end do

v2%x02(1)=11+1
v2%x02(2)=12+1
do k=1,2
if (v1(k)%x02(1)/=1+1) print *,201,k
if (v1(k)%x02(2)/=2+1) print *,202,k
end do
if (v2%x02(1)/=11+1) print *,203,k
if (v2%x02(2)/=12+1) print *,204,k
deallocate (v2%x02)
if (allocated(v2%x02)) print *,301,k

v2%x82(1)=11+1
v2%x82(2)=12+1
do k=1,2
if (v1(k)%x82(1)/=1+1) print *,201,k
if (v1(k)%x82(2)/=2+1) print *,202,k
end do
if (v2%x82(1)/=11+1) print *,203,k
if (v2%x82(2)/=12+1) print *,204,k
deallocate (v2%x82)
if (allocated(v2%x82)) print *,301,k
v2%x92(1)=11+1
v2%x92(2)=12+1
do k=1,2
if (v1(k)%x92(1)/=1+1) print *,201,k
if (v1(k)%x92(2)/=2+1) print *,202,k
end do
if (v2%x92(1)/=11+1) print *,203,k
if (v2%x92(2)/=12+1) print *,204,k
deallocate (v2%x92)
if (allocated(v2%x92)) print *,301,k

do k=1,2
if (v1(k)%x02(1)/=1+1) print *,302,k
if (v1(k)%x02(2)/=2+1) print *,303,k
if (v1(k)%x82(1)/=1+1) print *,302,k
if (v1(k)%x82(2)/=2+1) print *,303,k
if (v1(k)%x92(1)/=1+1) print *,302,k
if (v1(k)%x92(2)/=2+1) print *,303,k

deallocate (v1(k)%x02)
if (allocated(v1(k)%x02)) print *,401,k
if (allocated(v1(k)%x12)) print *,801,k
if (allocated(v2%x12)) print *,901,k
end do

end
call s1
call s1
call s1
call s1
print *,'pass'
end
