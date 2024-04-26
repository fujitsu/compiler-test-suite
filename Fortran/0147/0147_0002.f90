module m1
contains
subroutine sub01(length)
target::length

assign 10 to length 
10 continue
end subroutine
end
use m1
call sub01(k)
print *,'pass'
end
