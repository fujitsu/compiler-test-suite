type t
class(*),allocatable::aaa(:)
end type
integer(1),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=1)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(1),allocatable::bbb(:)
allocate(ccc%aaa(1),source=1_1)
select type(ccc=>ccc%aaa)
type is(integer(1))
bbb=ccc
class default
print *,'ng'
end select
end
end
