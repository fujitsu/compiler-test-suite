module m
type ty
 integer::a
 character::c
 character,allocatable::ch(:)
 real,allocatable::rr(:,:)
 integer,allocatable::ii2
end type

type,extends(ty)::ty2
integer::ii
end type


end module 

use m


type(ty)::obj3(2)
allocate(obj3(1)%ch(2))
allocate(obj3(1)%rr(2,2))
allocate(obj3(1)%ii2)
allocate(obj3(2)%ch(3))
allocate(obj3(2)%rr(3,3))
allocate(obj3(2)%ii2)

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
