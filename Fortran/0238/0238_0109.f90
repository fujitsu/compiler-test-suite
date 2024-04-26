module m1
  type x0
     integer:: x01 (4)
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type y
integer::y1
type (x0),allocatable::v1(:)
end type
type(y):: v11
type z
integer::y1(20)
type (x0),allocatable::v2
end type
type(z),pointer::w

allocate(w)
allocate(w%v2)
do k=1,1
allocate(w%v2%x02(2))
w%v2%x02(1)=1+k
w%v2%x02(2)=2+k
end do

allocate( v11%v1(2) ,source=w%v2) 

do k=1,2
if (v11%v1(k)%x02(1)/=1+1) print *,101,k
if (v11%v1(k)%x02(2)/=2+1) print *,102,k
if (w%v2%x02(1)/=1+1) print *,103,k
if (w%v2%x02(2)/=2+1) print *,104,K
end do

w%v2%x02(1)=11+1
w%v2%x02(2)=12+1
do k=1,2
if (v11%v1(k)%x02(1)/=1+1) print *,201,k
if (v11%v1(k)%x02(2)/=2+1) print *,202,k
end do
if (w%v2%x02(1)/=11+1) print *,203,k
if (w%v2%x02(2)/=12+1) print *,204,k

deallocate (w%v2%x02)
if (allocated(w%v2%x02)) print *,301,k

do k=1,2
if (v11%v1(k)%x02(1)/=1+1) print *,302,k
if (v11%v1(k)%x02(2)/=2+1) print *,303,k

deallocate (v11%v1(k)%x02)
if (allocated(v11%v1(k)%x02)) print *,401,k
end do

end
call s1
print *,'pass'
end
