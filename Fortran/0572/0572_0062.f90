module m
type ty
 integer::a,b
end type


end module 

use m


type(ty)::obj3(2)

call sub(obj3)

print*,"pass"
contains
subroutine sub(dmy)
type(*),optional::dmy(:)

  if(present(dmy).neqv. .true.) print*,'402'
  if(lbound(dmy,1) /= 1) print*,'403' 
  if(ubound(dmy,1) /= 2) print*,'404' 
  if(size(dmy) /= 2) print*,'405',size(dmy) 
  if(size(shape(dmy))/=1 ) print*,'407'
  if(is_contiguous(dmy).neqv. .true.)print*,'406' 
  if(rank(dmy) /= 1)print*,'408' 

   end subroutine
        end   
