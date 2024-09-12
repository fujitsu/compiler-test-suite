module m
implicit none
end
subroutine s(i)
use m
value i
i=1
end subroutine
interface
subroutine s(i)
use m
value i
end subroutine
end interface
call s(j)
print *,'pass'
end
