implicit none
type ty
   integer :: ii
end type
integer :: ll=5
type(ty) :: obj
class(*),allocatable :: obj1,obj2
obj%ii=2
allocate(obj1,obj2,source=obj,stat=ll)

select type(obj1)
 type is(ty)
   if(obj1%ii.ne.2)print*,101
 class default 
   print*,102
end select

select type(obj2)
 type is(ty)
   if(obj2%ii.ne.2)print*,103
 class default 
   print*,104
end select
if(ll.ne.0)print*,105
print*,'pass'
end
