class(*),allocatable::aaa(:)
real(4),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=4)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
real(4),allocatable::bbb(:)
allocate(aaa(1),source=4.0_4)
select type(ccc=>aaa)
type is(real(4))
bbb=ccc
class default
print *,'ng'
end select
end
end
