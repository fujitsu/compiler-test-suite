module m
implicit none 




contains
   subroutine sub1(aa)       
   implicit none       
 type(*),optional::aa     
  if(present(aa).neqv. .true.) print*,'202'
  if(size(shape(aa))/=0 ) print*,'207'
   end subroutine sub1

   subroutine sub2(aa)       
   implicit none       
 type(*),optional::aa(*)     
  if(present(aa).neqv. .true.) print*,'302'
  if(lbound(aa,1) /=1 ) print*,'303'
  if(is_contiguous(aa).neqv. .true.)print*,'306' 
  if(rank(aa)/= 1)print*,'306' 
   end subroutine sub2

   subroutine sub3(aa)        
   implicit none       
 type(*),optional::aa(:)     
  if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,'404'
  if(size(aa,1) /= 5) print*,'405' 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa)/= 1)print*,'408' 
   end subroutine sub3



        
   
end module m

use m




call sub3((/1,1,1,1,1/))        
call sub3((/'a','a','a','a','a'/))        
call sub3((/2.33,3.33,4.44,5.55,6.66/))        
call sub3((/(4,2),(5,5),(6,6),(7,7),(8,8)/))        
call sub3((/.true.,.false.,.false.,.false.,.false./))    

print*,"pass"
        end
