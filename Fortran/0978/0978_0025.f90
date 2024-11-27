integer(4),allocatable :: from(:)
integer(4),allocatable :: to(:)

allocate(from(10))
from = 10

call move_alloc(from,to)

if (.not. allocated(to)) then
  print *,'error'
else if (allocated(from)) then
  print *,'error'
else
if (any(to/=10))write(6,*) "NG"
endif
print *,'pass'
end
