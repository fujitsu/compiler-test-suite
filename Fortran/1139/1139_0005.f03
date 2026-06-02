type t 
end type
character(:),allocatable::bbb(:)
type,extends(t)::ccc
character(:),allocatable::aaa(:)
end type
class(ccc),allocatable::ddd
allocate(ddd)
call s(bbb)
if(len(bbb)/=1) print *,'err'
print *,'sngg166k : pass'
contains
subroutine s(bbb)
character(:),allocatable::bbb(:)
allocate(ddd%aaa(1),source="a")
select type(eee=>ddd)
type is (ccc         )
bbb=ddd%aaa
class default
print *,'ng'
end select
end
end
