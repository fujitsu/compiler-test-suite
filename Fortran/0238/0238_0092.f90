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
type(y0),allocatable:: v11
type (x0),allocatable::v2

allocate(v11)
allocate(v2)
allocate(v2%x02(2))
v2%x02(1)=1
v2%x02(2)=2

allocate( v11%v1 ,source=v2) 


end
call s1
print *,'pass'
end
