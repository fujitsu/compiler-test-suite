module m
implicit none 
type  ty 
 integer::ii
 character::c(4)
end type




contains

   subroutine sub3(aa,r)        
   implicit none       
 type(*),optional::aa(..)
        integer::r
  if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,'404'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa) /= r)print*,'406' 

   end subroutine sub3



        
   
end module m

use m


call sub3((/ty(2,'a'),ty(3,'b'),ty(4,'c'),ty(5,'d'),ty(6,'e')/),1)

        print*,"pass"
        end
