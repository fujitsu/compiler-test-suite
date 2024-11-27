character(len=10),allocatable :: from(:)
character(len=10),allocatable :: to(:)
allocate(from(10))

from = 'a'
call move_alloc(from,to)

if (.not. allocated(to)) then
   print *,'error'
else 
if (any(to/='a'))write(6,*) "NG"
endif
print *,'pass'
end
