type t
class(*),allocatable::aaa(:)
end type
complex(16),allocatable::bbb(:)
type(t)::ccc
call s(bbb)
if(any(bbb/=16)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
complex(16),allocatable::bbb(:)
allocate(ccc%aaa(1),source=(16.0_16,0.0_16))
select type(ccc=>ccc%aaa)
type is(complex(16))
bbb=ccc
class default
print *,'ng'
end select
end
end
