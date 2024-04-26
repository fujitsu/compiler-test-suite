module m1
  type x0
     integer(8):: x01 (2)
     integer,allocatable:: x02(:)
  end type
end
subroutine s1(n)
use m1
type y
integer::v0
type (x0),allocatable::v1(:)
end type
type (x0),allocatable::v1(:)
type(y),allocatable::v11(:)
type z
integer::v0(50)
type (x0),allocatable::v2(:)
end type
type(z),allocatable::w(:)

allocate(w(3))
allocate(v11(n))
allocate(w(3)%v2(2))
do k=1,2
allocate(w(3)%v2(k)%x02(2))
w(3)%v2(k)%x02(1)=1+k
w(3)%v2(k)%x02(2)=2+k
end do

nmk=9
allocate( v1 ,source=w(3)%v2,stat=nmk) 
if (nmk/=0) print *,1230

do k=1,2
if (v1(k)%x02(1)/=1+k) print *,101,k
if (v1(k)%x02(2)/=2+k) print *,102,k
if (w(3)%v2(k)%x02(1)/=1+k) print *,103,k
if (w(3)%v2(k)%x02(2)/=2+k) print *,104,K
end do

do k=1,2
w(3)%v2(k)%x02(1)=11+k
w(3)%v2(k)%x02(2)=12+k
if (v1(k)%x02(1)/=1+k) print *,201,k
if (v1(k)%x02(2)/=2+k) print *,202,k
if (w(3)%v2(k)%x02(1)/=11+k) print *,203,k
if (w(3)%v2(k)%x02(2)/=12+k) print *,204,k

deallocate (w(3)%v2(k)%x02)
if (allocated(w(3)%v2(k)%x02)) print *,301,k
if (v1(k)%x02(1)/=1+k) print *,302,k
if (v1(k)%x02(2)/=2+k) print *,303,k


deallocate (v1(k)%x02)
if (allocated(v1(k)%x02)) print *,401,k
end do

end
call s1(3)
call s1(3)
call s1(3)
call s1(3)
print *,'pass'
end
