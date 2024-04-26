MODULE M
contains
SUBROUTINE sub3(aa)
   IMPLICIT NONE
 integer,contiguous::aa(:)
  if(is_contiguous(aa).NEQV. .true.)print*,'406'
   aa = 20
   END SUBROUTINE sub3
End module M

use M
integer,pointer::arr(:)
        allocate(arr(5))
arr = 10
call sub3(arr(1:5:2))
if (any(arr /= [20,10,20,10,20])) print *,102
print*,"PASS"
        end

