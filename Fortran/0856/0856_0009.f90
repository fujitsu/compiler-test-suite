type t
class(*),allocatable::aaa(:)
end type
complex(8),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=8)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
complex(8),allocatable::bbb(:)
allocate(ccc%aaa(1),source=(8.0_8,0.0_8))
select type(ccc=>ccc%aaa)
type is(complex(8))
bbb=ccc
class default
print *,'ng'
end select
end
end
