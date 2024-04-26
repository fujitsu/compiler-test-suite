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
type  y1
     integer:: x01 (30)
type (x0),allocatable::v2
end type
type  y2
     integer:: x01 (120)
type (y1),allocatable::v22(:)
end type
type (y2),allocatable::v23(:)

allocate(v23(3))
allocate(v23(3)%v22(4))
allocate(v11(3))
allocate(v23(3)%v22(4)%v2)
allocate(v23(3)%v22(4)%v2%x02(2))
v23(3)%v22(4)%v2%x02(1)=1
v23(3)%v22(4)%v2%x02(2)=2

allocate( v11(3)%v1 ,source=v23(3)%v22(4)%v2) 


end
call s1
print *,'pass'
end
