module m1
TYPE Z_TYPE
  integer::Z
END TYPE
logical x
TYPE(Z_TYPE) ,POINTER::G
end
subroutine s1
use m1
    G%Z=4
    call s2
     x=G%Z/=14
end subroutine
subroutine s2
use m1
     G%Z=G%Z+10
end subroutine

use m1
ALLOCATE (G)
call s1
if (x)print *,"Error*:",G%Z 
print *,'pass'
end
