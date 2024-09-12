module m
contains
subroutine sub1(aa)        
   implicit none       
 type(*),optional::aa     
  if(present(aa).neqv. .false.) print*,'202'
  if(size(shape(aa))/=0 ) print*,'207'
  if(rank(aa)/=0)print*,'208'
   end subroutine sub1

subroutine sub3(aa)        
   implicit none       
 type(*),optional::aa(:,:)     
  if(present(aa).neqv. .false.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=0 ) print*,'404'
  if(size(aa,1) /= 0) print*,'405' 
  if(size(shape(aa))/= 2) print*,'407'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa)/= 2)print*,'408' 
   end subroutine sub3
        
end module m

use m



integer,pointer::arr(:,:)
        allocate(arr(5,5))
    
call sub1(null())        
call sub3(null(arr))        
print*,"pass"
        end
