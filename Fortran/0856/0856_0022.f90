class(*),allocatable::aaa(:)
complex(16),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=16)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
complex(16),allocatable::bbb(:)
allocate(aaa(1),source=(16.0_16,0.0_16))
select type(ccc=>aaa)
type is(complex(16))
bbb=ccc
class default
print *,'ng'
end select
end
end
