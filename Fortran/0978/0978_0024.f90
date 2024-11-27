integer,allocatable :: from(:)
integer,allocatable :: to(:)
allocate(from(10))

from = 10

call move_alloc(from,to)

if (.not. allocated(to)) then
  print *,'error1'
elseif (allocated(from)) then
  print *,'error2'
else
  if (any(to/=10))write(6,*) "NG"
endif
print *,'pass'


end
