type t0
  integer :: jj(3)
end type
type ty
class(t0),allocatable :: cmp(:)
end type    
type(t0) :: jj
type(ty):: obj
allocate(t0 :: obj%cmp(3))
select type(a=>obj%cmp)
type is (t0)
a(1)=t0(10)
jj =a(1)
class default
     print*,"103"
end select
if(jj%jj(1) .ne. 10)print*,"101"
if(jj%jj(2) .ne. 10)print*,"102"
print*,"Pass"
end
