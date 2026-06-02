MODULE M
contains
SUBROUTINE sub3(aa)        
   IMPLICIT NONE       
  type(*),optional::aa(..)     
  if(present(aa))then
  if(any(lbound(aa) /=1) ) print*,'403'
  if(any(ubound(aa) /=0) ) print*,'404'
  if(size(aa) /= 1) print*,'405',size(aa)
  if(size(shape(aa))/= 0) print*,'407',size(shape(aa))
  if(is_contiguous(aa).NEQV. .true.)print*,'406' 
  if(rank(aa)/= 0)print*,'408',rank(aa)
  endif
   END SUBROUTINE sub3
End module M
use M
integer,pointer::arr(:,:)
allocate(arr(5,5))
call sub3(NULL(arr))        
print*,"PASS"
end
