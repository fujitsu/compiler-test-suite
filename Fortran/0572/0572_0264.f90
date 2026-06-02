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
  if(lbound(aa,1) /= 1) print*,'403' 
  if(ubound(aa,1) /= 5) print*,'404' ,ubound(aa,1)
  if(size(aa) /= 5) print*,'405' ,size(aa,1)
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .false.)print*,'406' 
  if(rank(aa) /= r)print*,'406' 

   end subroutine sub3



        
   
end module m

use m

integer::aaa(10)
type(ty)::obj(10)
call sub2(aaa(1:10:2))
call sub4(obj(1:10:2))
        print*,"pass"

contains
subroutine sub2(arr)
integer::arr(..)
call sub3(arr,1)
end subroutine

subroutine sub4(arr)
type(ty)::arr(..)
call sub3(arr,1)
end subroutine

        end
