type t
class(*),allocatable::aaa(:)
end type
complex(4),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=4)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
complex(4),allocatable::bbb(:)
allocate(ccc%aaa(1),source=(4.0_4,0.0_4))
select type(ccc=>ccc%aaa)
type is(complex(4))
bbb=ccc
class default
print *,'ng'
end select
end
end
