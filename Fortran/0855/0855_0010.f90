type t
class(*),allocatable::aaa
end type
character(:),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(len(bbb)/=1) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
character(:),allocatable::bbb(:)
allocate(character(0)::bbb(2))
allocate(ccc%aaa,source="a")
select type(ccc=>ccc%aaa)
type is(character(*))
bbb=ccc
end select
end
end
