MODULE M
IMPLICIT NONE 
contains

   SUBROUTINE sub3(aa)        
   IMPLICIT NONE       
 type(*),optional::aa(..)     
  if(present(aa))then
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,'404'
  if(size(aa,1) /= 5) print*,'405' 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).NEQV. .true.)print*,'406' 
  if(rank(aa)/= 1)print*,'408' 
  endif
  END SUBROUTINE sub3



        
   
End module M

use M




call sub3((/1,1,1,1,1/))        
call sub3((/'a','a','a','a','a'/))        
call sub3((/2.33,3.33,4.44,5.55,6.66/))        
call sub3((/(4,2),(5,5),(6,6),(7,7),(8,8)/))        
call sub3((/.true.,.false.,.false.,.false.,.false./))    

print*,"PASS"
        end
