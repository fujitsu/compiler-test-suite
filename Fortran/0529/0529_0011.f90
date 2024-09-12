
type ty
integer :: ii
class(*),allocatable:: cptr   
end type

type(ty),allocatable :: obj,obj2(:)
allocate(obj)
allocate(character(1000)::obj%cptr)
k=0
select type(p=>obj%cptr)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
if (1==0) then
   obj2=obj
endif

print *,'pass'
end

