complex,parameter::cmp = (5,6)
integer,allocatable :: ii(:)
allocate(ii(int(cmp%re)))
if (size(ii) .ne. 5) print*,101
PRINT*,"PASS"
end
