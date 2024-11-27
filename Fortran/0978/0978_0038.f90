integer,allocatable :: from(:)
integer,allocatable :: to(:)

call move_alloc(from,to)

if (allocated(to)) then
  print *,'error1'
elseif (allocated(from)) then
  print *,'error2'
endif
print *,'pass'
end
