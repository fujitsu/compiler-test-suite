module m1
 integer:: m1_i1
end module

use m1
call s

contains
 subroutine s
 volatile :: m1_i1
 m1_i1=1
 if (m1_i1 /= 1) write(6,*) "NG"
 print *,'pass'
 end subroutine
end
