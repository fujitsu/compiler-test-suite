class(*),allocatable::aaa(:)
integer(1),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=1)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(1),allocatable::bbb(:)
allocate(aaa(1),source=1_1)
select type(ccc=>aaa)
type is(integer(1))
bbb=ccc
class default
print *,'ng'
end select
end
end
