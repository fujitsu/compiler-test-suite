type t0
  integer :: jj
end type
type ty
class(*),allocatable :: cmp
end type    
integer :: kk
type(ty):: obj
allocate(integer :: obj%cmp)
obj%cmp=2
 select type (cptr=>obj%cmp)
    type is (integer)
    kk=cptr
    !obj%cmp =12
    class default
       print*,"102"
 end select
if(kk .ne. 2)print*,"101"
print*,"Pass"
 end

