module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type  y0
     integer:: x01 
type (x0),allocatable::v1
end type
type(y0):: v11
type (x0),allocatable::v2

allocate( v11%v1 ,source=v2) 

end
print *,'pass'
end
