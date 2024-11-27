type t
class(*),allocatable::aaa(:)
end type
real(8),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=8)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
real(8),allocatable::bbb(:)
allocate(ccc%aaa(1),source=8.0_8)
select type(ccc=>ccc%aaa)
type is(real(8))
bbb=ccc
class default
print *,'ng'
end select
end
end
