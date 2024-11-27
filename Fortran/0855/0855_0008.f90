type t
class(*),pointer::aaa(:)
end type
character(:),pointer::bbb(:)
type(t)::ccc
call s(bbb)
if(len(bbb)/=65000) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
character(:),pointer::bbb(:)
allocate(character(65000)::bbb(1))
allocate(ccc%aaa(1),source="a")
select type(ccc=>ccc%aaa)
type is(character(*))
bbb=ccc
end select
end
end
