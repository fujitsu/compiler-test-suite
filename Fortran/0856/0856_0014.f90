class(*),allocatable::aaa(:)
integer(2),allocatable::bbb(:)
call s(bbb)
if(any(bbb/=2)) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
integer(2),allocatable::bbb(:)
allocate(aaa(1),source=2_2)
select type(ccc=>aaa)
type is(integer(2))
bbb=ccc
class default
print *,'ng'
end select
end
end
