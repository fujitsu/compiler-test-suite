module m1
  type x0
     integer(8):: x11 
     integer(8):: x12 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1(n)
use m1
type  y0
     integer:: x01 
type (x0),allocatable::v1
end type
type(y0),allocatable:: v11(:)
type  z
     integer:: x01 
type (x0),allocatable::v2(:,:)
end type
type(z),allocatable::w(:)

allocate(w(2))
allocate(w(2)%v2(3,4))
allocate(v11(3))
allocate(w(2)%v2(3,4)%x02(2))
w(2)%v2(3,4)%x02(1)=1
w(2)%v2(3,4)%x02(2)=2

allocate( v11(n)%v1 ,source=w(2)%v2(3,4)) 

if (v11(n)%v1%x02(1)/=1) print *,101
if (v11(n)%v1%x02(2)/=2) print *,102
if (w(2)%v2(3,4)%x02(1)/=1) print *,103
if (w(2)%v2(3,4)%x02(2)/=2) print *,104

w(2)%v2(3,4)%x02(1)=11
w(2)%v2(3,4)%x02(2)=12
if (v11(n)%v1%x02(1)/=1) print *,201
if (v11(n)%v1%x02(2)/=2) print *,202
if (w(2)%v2(3,4)%x02(1)/=11) print *,203
if (w(2)%v2(3,4)%x02(2)/=12) print *,204

deallocate (w(2)%v2(3,4)%x02)
if (allocated(w(2)%v2(3,4)%x02)) print *,301
if (v11(n)%v1%x02(1)/=1) print *,302
if (v11(n)%v1%x02(2)/=2) print *,303

deallocate (v11(n)%v1%x02)
if (allocated(v11(n)%v1%x02)) print *,401

end
call s1(3)
print *,'pass'
end
