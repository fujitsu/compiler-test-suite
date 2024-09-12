module m
interface
 module subroutine s(i)
 IMPLICIT NONE
 integer(kind=4) :: i
 end
end interface
end
submodule(m)smod
contains
 module subroutine s(i)
 IMPLICIT NONE
 integer(kind=4) :: i
   i=1
 end
end

use m
IMPLICIT NONE
integer(kind=4) :: j
call s(j)
if (j.ne.1) print *,'err'
print *,'pass'
end
