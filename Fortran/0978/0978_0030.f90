integer,allocatable :: from(:)
integer,allocatable :: to(:)
allocate(from(10),to(20))
from = 10
to(::2) = from

call move_alloc(from=to,to=from)

if (.not. allocated(from)) then
  print *,'error1'
elseif (allocated(to)) then
  print *,'error2'
else
  if (any(from(::2)/=10))write(6,*) "NG"
endif
print *,'pass'
end
