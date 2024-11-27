type t
class(*),allocatable::aaa(:)
end type
integer(2),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=2)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(2),allocatable::bbb(:)
allocate(ccc%aaa(1),source=2_2)
select type(ccc=>ccc%aaa)
type is(integer(2))
bbb=ccc
class default
print *,'ng'
end select
end
end
