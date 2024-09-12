module m
implicit none 




contains
   subroutine sub1(aa)       
   implicit none       
 type(*),optional::aa     
  if(present(aa).neqv. .true.) print*,'202'
  if(size(shape(aa))/=0 ) print*,'207'
  if(rank(aa)/=0)print*,'208'
   end subroutine sub1
end module m

use m




call sub1(4+5)        
call sub1("here")        
call sub1(5.66+7.4)        
call sub1((4,2.4))        
call sub1(.true.)        
print*,"pass"
        end
