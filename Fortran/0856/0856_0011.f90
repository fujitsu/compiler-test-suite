class(*),allocatable::aaa(:)
character(:),allocatable::bbb(:)
call s(bbb)
if(any(bbb/="1")) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
character(:),allocatable::bbb(:)
allocate(aaa(1),source="1")
select type(ccc=>aaa)
type is(character(*))
bbb=ccc
class default
print *,'ng'
end select
end
end
