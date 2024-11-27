type t
class(*),allocatable::aaa(:)
end type
integer(8),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=4)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(8),allocatable::bbb(:)
allocate(ccc%aaa(1),source=4_8)
select type(ccc=>ccc%aaa)
type is(integer(8))
bbb=ccc
class default
print *,'ng'
end select
end
end
