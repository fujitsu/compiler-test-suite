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
  if(size(lbound(aa)) /= 0) print*,'403' 
  if(size(ubound(aa)) /= 0) print*,'404' 
  if(size(aa) /= 1) print*,'405' 
  if(size(shape(aa))/=0 ) print*,'407'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa) /= r)print*,'406' 

   end subroutine sub3



        
   
end module m

use m

integer::aaa
type(ty)::obj
call sub2(aaa)
call sub4(obj)
        print*,"pass"

contains
subroutine sub2(arr)
integer::arr(..)
call sub3(arr,0)
end subroutine

subroutine sub4(arr)
type(ty)::arr(..)
call sub3(arr,0)
end subroutine

        end
