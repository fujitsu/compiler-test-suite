MODULE M
IMPLICIT NONE 
type ty
 character(len=4)::c
 integer::a
end type 




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




call sub3((/ty('aaaa',2),ty('bbbb',3),ty('cccc',4),ty('dddd',5),ty('eeee',6)/))        

print*,"PASS"
        end
