class(*),allocatable::aaa(:)
complex(8),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=8)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
complex(8),allocatable::bbb(:)
allocate(aaa(1),source=(8.0_8,0.0_8))
select type(ccc=>aaa)
type is(complex(8))
bbb=ccc
class default
print *,'ng'
end select
end
end
