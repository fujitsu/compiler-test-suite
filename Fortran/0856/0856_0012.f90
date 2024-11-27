class(*),allocatable::aaa(:)
character(100),allocatable::bbb(:)
call s(bbb)
if(any(bbb/="123")) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
character(*),allocatable::bbb(:)
allocate(aaa(1),source="123")
select type(ccc=>aaa)
type is(character(*))
bbb=ccc
class default
print *,'ng'
end select
end
end
