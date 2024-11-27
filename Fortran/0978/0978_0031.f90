integer,pointer :: pi(:)
integer,allocatable,target :: from(:)
integer,allocatable,target :: to(:)
allocate(from(10))
from = 10
pi=>from

call move_alloc(from,to)

if (.not. allocated(to)) then
  print *,'error1'
elseif(allocated(from)) then
  print *,'error2'
else
  if (any(pi/=10))write(6,*) "NG"
endif
print *,'pass'
end
