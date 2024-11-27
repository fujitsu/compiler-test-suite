type t
class(*),allocatable::aaa(:)
end type
integer(4),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=3)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(4),allocatable::bbb(:)
allocate(ccc%aaa(1),source=3_4)
select type(ccc=>ccc%aaa)
type is(integer(4))
bbb=ccc
class default
print *,'ng'
end select
end
end
