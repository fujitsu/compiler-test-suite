type t0
  integer :: jj
end type
type ty
class(*),allocatable :: cmp(:)
end type    
integer :: jj(2)
type(ty):: obj
allocate(integer :: obj%cmp(3))
select type(a=>obj%cmp(2:3))
type is (integer)
a(1)=5
a(2)=6
end select
 select type (cptr=>obj%cmp(2:3))
    type is (integer)
    jj=cptr
    class default
       print*,"103"
 end select
if(jj(1) .ne. 5)print*,"101"
if(jj(2) .ne. 6)print*,"102"
print*,"Pass"
end
