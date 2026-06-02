type t0
  integer :: jj(3)
end type
type ty
class(*),allocatable :: cmp(:)
end type    
integer :: jj(3)
type(ty):: obj
allocate(integer :: obj%cmp(3))
select type(a=>obj%cmp)
type is (integer)
a(1) =12
a(2) =13
jj(1)=a(1)
jj(2)=a(2)
class default
     print*,"103"
end select
if(jj(1) .ne. 12)print*,"101"
if(jj(2) .ne. 13)print*,"102"
print*,"Pass"
end
