module m1
  type x0
     integer(8):: x11 
     integer(8):: x12 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type  y0
     integer:: x01 
type (x0),allocatable::v1
end type
type(y0),allocatable:: v11(:)
type  z
     integer:: x01 (20)
type (x0),allocatable::v2
end type
type  q
     integer:: x01 (30)
type(z),pointer::w(:)
end type
type(q),pointer::g(:)
allocate(g(2))
allocate(g(2)%w(2))
allocate(v11(3))
allocate(g(2)%w(2)%v2)
allocate(g(2)%w(2)%v2%x02(2))
g(2)%w(2)%v2%x02(1)=1
g(2)%w(2)%v2%x02(2)=2

allocate( v11(3)%v1 ,source=g(2)%w(2)%v2) 

if (v11(3)%v1%x02(1)/=1) print *,101
if (v11(3)%v1%x02(2)/=2) print *,102
if (g(2)%w(2)%v2%x02(1)/=1) print *,103
if (g(2)%w(2)%v2%x02(2)/=2) print *,104

g(2)%w(2)%v2%x02(1)=11
g(2)%w(2)%v2%x02(2)=12
if (v11(3)%v1%x02(1)/=1) print *,201
if (v11(3)%v1%x02(2)/=2) print *,202
if (g(2)%w(2)%v2%x02(1)/=11) print *,203
if (g(2)%w(2)%v2%x02(2)/=12) print *,204

deallocate (g(2)%w(2)%v2%x02)
if (allocated(g(2)%w(2)%v2%x02)) print *,301
if (v11(3)%v1%x02(1)/=1) print *,302
if (v11(3)%v1%x02(2)/=2) print *,303

deallocate (v11(3)%v1%x02)
if (allocated(v11(3)%v1%x02)) print *,401

end
call s1
print *,'pass'
end
