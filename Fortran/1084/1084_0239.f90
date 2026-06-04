type t0
  integer :: jj(3)
end type
type ty
class(*),allocatable :: cmp(:)
end type    
integer :: jj(3)
type(ty):: obj(2)
allocate(integer :: obj(1)%cmp(3))
select type(a=>obj(1)%cmp)
type is (integer)
a(1)=10
a(2)=11
jj=a
class default
     print*,"103"
end select
if(jj(1) .ne. 10)print*,"101"
if(jj(2) .ne. 11)print*,"102"
print*,"Pass"
end
