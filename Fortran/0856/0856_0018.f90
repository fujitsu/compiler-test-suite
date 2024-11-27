class(*),allocatable::aaa(:)
real(8),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=8)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
real(8),allocatable::bbb(:)
allocate(aaa(1),source=8.0_8)
select type(ccc=>aaa)
type is(real(8))
bbb=ccc
class default
print *,'ng'
end select
end
end
