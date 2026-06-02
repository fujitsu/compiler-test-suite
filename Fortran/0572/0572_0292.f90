MODULE M
contains

SUBROUTINE sub3(aa)        
   IMPLICIT NONE       
 type(*),optional::aa(..)    
  if(present(aa))then
  if(is_contiguous(aa).NEQV. .true.)print*,'406'
  end if
   END SUBROUTINE sub3
        
End module M

use M
integer,pointer::arr(:,:)
        allocate(arr(5,5))
    
call sub3(NULL(arr))        
print*,"PASS"
        end


