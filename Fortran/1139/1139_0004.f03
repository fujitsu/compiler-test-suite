type t
class(*),allocatable::aaa(:)
end type
character(:),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(len(bbb)/=1) print *,'err'
print *,'sngg165k : pass'
contains
subroutine s(bbb)
character(:),allocatable::bbb(:)
allocate(ccc%aaa(1),source="a")
select type(ccc=>ccc%aaa)
type is(character(*))
bbb=ccc
!print *,ccc
class default
print *,'ng'
end select
end
end

