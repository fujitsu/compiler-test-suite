type str1
  integer,allocatable :: all(:)
end type

type(str1),allocatable :: from(:)
type(str1),allocatable :: to(:)

allocate(from(-10:-1))
allocate(from(-5)%all(10))
from(-5)%all = 10

call move_alloc(from,to)

if(any(to(-5)%all/=10))write(6,*) "NG"
print *,'pass'

end
