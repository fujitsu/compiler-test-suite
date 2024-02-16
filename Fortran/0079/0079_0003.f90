module m
interface
module subroutine sub0(i)
end subroutine
end interface
end

submodule  (m) smod
interface 
module subroutine sub1(i)
end subroutine
module subroutine sub2(i)
integer :: i(10)
end subroutine
end interface
contains
module subroutine sub0(i)
i=30
call sub1(ii)
if (ii.ne.10) print *,'err 1'
end subroutine
module subroutine sub1(i)
integer :: ii(10)
i=10
call sub2(ii(1:10))
end subroutine
module subroutine sub2(i)
integer :: i(10)
i=20
end subroutine
end

use m
call sub0(ii)
if (ii.ne.30) print *,'err 0'
print *,'pass'
end

