type t
class(*),allocatable::aaa(:,:)
end type
character(:),allocatable::bbb(:,:)
type(t)::ccc
call s(bbb)
if(len(bbb)/=512) print *,'err'
print *,'pass'
contains
subroutine s(bbb)
character(:),allocatable::bbb(:,:)
allocate(character(65000)::bbb(2,1))
allocate(ccc%aaa(2,1),source=repeat("a",512))
select type(ccc=>ccc%aaa)
type is(character(*))
bbb=ccc
end select
end
end
