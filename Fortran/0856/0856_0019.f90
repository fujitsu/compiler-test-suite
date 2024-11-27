class(*),allocatable::aaa(:)
real(16),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=16)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
real(16),allocatable::bbb(:)
allocate(aaa(1),source=16.0_16)
select type(ccc=>aaa)
type is(real(16))
bbb=ccc
class default
print *,'ng'
end select
end
end
