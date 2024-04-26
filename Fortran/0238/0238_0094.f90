module m1
  type x0
     integer(8):: x11 
     integer(8):: x12 
  end type
end
subroutine s1
use m1
type  y0
     integer:: x01 
type (x0),allocatable::v1
type (x0),allocatable::vx(:)
end type
type(y0),allocatable:: v11(:)
type (x0),allocatable::v2

allocate(v11(3))
allocate(v2)
v2%x11=11
v2%x12=12

allocate( v11(3)%v1 ,source=v2) 
if (v11(3)%v1%x11/=11) print *,101
if (v11(3)%v1%x12/=12) print *,102

allocate( v11(3)%vx(2) ,source=v2) 
if (v11(3)%vx(1)%x11/=11) print *,103
if (v11(3)%vx(1)%x12/=12) print *,104
if (v11(3)%vx(2)%x11/=11) print *,105
if (v11(3)%vx(2)%x12/=12) print *,106

end
call s1
print *,'pass'
end
