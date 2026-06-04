MODULE M
IMPLICIT NONE 




contains
function f1(a)
        integer::a,f1
        f1=a+10
       end function
function f2()
        character::f2
        f2='a'
       end function
function fa(a)
        integer::a,fa(5)
        fa=a+100
       end function

  
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




call sub3(fa(f1(4)))       
call sub3(fa(5)+f1(4))        
print*,"PASS"
        end
