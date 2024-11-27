type t
class(*),allocatable::aaa(:)
end type
character(100),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(len(bbb)/=100) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
character(*),allocatable::bbb(:)
allocate(ccc%aaa(1),source="")
select type(ccc=>ccc%aaa)
type is(character(*))
bbb=ccc
class default
print *,'ng'
end select
end
end
