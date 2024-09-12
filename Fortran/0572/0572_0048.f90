module m
implicit none 




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

   subroutine sub1(aa)       
   implicit none       
 type(*),optional::aa     
  if(present(aa).neqv. .true.) print*,'202'
  if(size(shape(aa))/=0 ) print*,'207'
  if(rank(aa)/=0)print*,'208'
   end subroutine sub1
   
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




call sub1(f1(4))        
call sub1(f2())        
call sub3(fa(f1(4)))       
call sub3(fa(5)+f1(4))        
print*,"pass"
        end
