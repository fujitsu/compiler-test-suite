class(*),allocatable::aaa(:)
integer(8),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=8)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(8),allocatable::bbb(:)
allocate(aaa(1),source=8_8)
select type(ccc=>aaa)
type is(integer(8))
bbb=ccc
class default
print *,'ng'
end select
end
end
