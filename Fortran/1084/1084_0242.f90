type t0
  integer :: jj(3)
end type
type ty
class(*),allocatable :: cmp(:)
end type    
integer :: jj(3)
type(ty):: obj
integer::k =1
allocate(integer :: obj%cmp(3))
select type(a=>obj%cmp)
type is (integer)
 select type(a=>obj%cmp)
   type is (integer)
   a(k:3) =[12,13,14]
   jj(k:3)=a(1:3)
   class default
     print*,"103"
 end select
 class default
  print*,"113"
end select
if(jj(1) .ne. 12)print*,"101"
if(jj(2) .ne. 13)print*,"102"
if(jj(3) .ne. 14)print*,"103"
print*,"Pass"
end
