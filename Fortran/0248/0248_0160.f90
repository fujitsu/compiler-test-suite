type ty
   integer :: ii
end type

type(ty) :: obj
class(*),allocatable :: obj2
obj%ii=2
allocate(obj2,mold=obj,stat=ll)
if(ll .ne. 0  )then
print*,102
end if
select type(obj2)
 type is(ty)
 print*,'pass'
class default 
     print*,101
end select
end
