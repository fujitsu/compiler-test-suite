module m
type ty
 integer::a,b
end type

type,extends(ty)::ty2
integer::ii
end type

contains
subroutine sub2()
print*,"in sub2"
end subroutine

end module 

use m

class(ty),allocatable::obj2(:)
allocate(ty2::obj2(4))

call sub(obj2)
print*,"pass"
contains
subroutine sub(dmy)
type(*),optional::dmy(:)

  if(present(dmy).neqv. .true.) print*,'402'
  if(is_contiguous(dmy).neqv. .true.)print*,'406' 
  if(rank(dmy) /= 1)print*,'408' 

   end subroutine
        end   
